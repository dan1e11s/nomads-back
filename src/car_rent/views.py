from rest_framework import generics, views
from rest_framework.response import Response
from django.db.models import Q
from django.core.exceptions import ObjectDoesNotExist

from .models import *
from .serializers import *

from src.tg_bot.bot import send_car_request
from asyncio import run


class CarListAPIView(views.APIView):

    def get(self, request, type_id):
        try:
            queryset = Car.objects.prefetch_related(
                'car_images', 'car_prices', 'brand').exclude(status=0).filter(type_id=type_id)
            serializer = CarListSerializer(queryset, many=True)
            return Response(serializer.data)
        except ObjectDoesNotExist:
            return Response({"response": False})
        

class CarTypeListView(generics.ListAPIView):
    serializer_class = CarTypeSerializer
    queryset = CarType.objects.all()
        



class CarDetailAPIView(generics.RetrieveAPIView):
    queryset = Car.objects.all()
    serializer_class = CarDetailSerializer


class CarRequestAPIView(generics.CreateAPIView):
    serializer_class = CarRequestSerializer
    queryset = CarRentalRequest.objects.all()

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)

        if serializer.is_valid():
            serializer.save()
            msg = run(send_car_request(serializer.data))
            if msg:
                return Response({'response': True})
            return Response({'response': False})
        return Response({'response': False, 'errors': serializer.errors})


class OptionsAPIView(views.APIView):
    def get(self, request, *args, **kwargs):
        brands = Brand.objects.all()
        types = CarType.objects.all()

        brand_serializer = BrandSerializer(brands, many=True)
        type_serializer = TypeSerializer(types, many=True)

        return Response({
            'brands': brand_serializer.data,
            'types': type_serializer.data
        })
    

