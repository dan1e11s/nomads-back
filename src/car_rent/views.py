from rest_framework import generics

from .models import *
from .serializers import *


class CarListAPIView(generics.ListAPIView):
    serializer_class = CarListSerializer

    def get_queryset(self):
        queryset = Car.objects.filter(status=1).prefetch_related('car_prices', 'car_images', )
        return queryset
