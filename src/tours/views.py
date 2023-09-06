from rest_framework.response import Response
from rest_framework import generics, status, filters, views
from django.db.models import Prefetch, Avg, Count, Q, Sum
from .models import *
from .serializers import *
from .pagination import GuaranteedToursPagination
from src.tg_bot.bot import send_tour_review, your_tour_create, tour_request
from asyncio import run


class TourDetailAPIView(generics.RetrieveAPIView):
    serializer_class = TourDetailSerializer

    def get_queryset(self):
        queryset = Tour.objects.prefetch_related('images', 'programs', 'prices', 'routes').all()
        tours = queryset.annotate(avg_rating=Avg('reviews__rating', filter=Q(reviews__status=1)),
                                  total_reviews=Count('reviews', filter=Q(reviews__status=1)))

        return tours

    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()

        instance.views += 1
        instance.save()

        serializer = self.get_serializer(instance)
        return Response(serializer.data)


class ReviewCreateAPIView(generics.CreateAPIView):
    serializer_class = ReviewSerializer
    queryset = TourReviews.objects.all()

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)

        if serializer.is_valid():
            serializer.save()
            msg = run(send_tour_review(serializer.data))
            if msg:
                return Response({'response': True})
            return Response({'response': False})
        return Response({'response': False, 'errors': serializer.errors})


class GuaranteedToursAPIView(generics.ListAPIView):
    search_fields = ['cat__name', 'images__location', 'prices__economy', 'description',
                     'excluded', 'included', 'start_day', 'title']
    filter_backends = [filters.SearchFilter]
    serializer_class = GuaranteedToursSerializer

    pagination_class = GuaranteedToursPagination

    def get_queryset(self):
        tours = Tour.objects.filter(type=1).prefetch_related('prices', 'images', )

        tours = tours.annotate(avg_rating=Avg('reviews__rating', filter=Q(reviews__status=1)),
                               total_reviews=Count('reviews', filter=Q(reviews__status=1)))
        return tours.select_related('cat')


class SliderAPIView(generics.ListAPIView):
    serializer_class = SliderSerializer

    def get_queryset(self):
        queryset = Slider.objects.filter(is_active=True)
        sorted_queryset = sorted(queryset, key=lambda obj: obj.id)
        return sorted_queryset
    
    
class MainPageAPIView(views.APIView):
    def get(self, request, *args, **kwargs):
        tours = Tour.objects.filter(top=True).prefetch_related('images', 'prices')
        categories = Category.objects.prefetch_related('tours')
        
        tours_serializer = MainToursSerializer(tours, many=True)
        categories_serializer = MainCategoriesSerializer(categories, many=True)
        
        response_data = {
            "tours": tours_serializer.data,
            "categories": categories_serializer.data,
        }
        
        return Response(response_data)


class CreateYourTourAPIView(generics.CreateAPIView):
    serializer_class = CreateYourTourSerializer
    queryset = CreateOwnTour.objects.all()

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)

        if serializer.is_valid():
            serializer.save()
            msg = run(your_tour_create(serializer.data))
            if msg:
                return Response({'response': True})
            return Response({'response': False})
        return Response({'response': False, 'errors': serializer.errors})

    def get(self, request, *args, **kwargs):
        data = {
            'accommodation_choices': [{'name': label} for key, label in CreateOwnTour.ACCOMMODATION_CHOICES],
            'meat_choices': [{'name': label} for key, label in CreateOwnTour.MEAT_CHOICES],
            'people_choices': [{'name': str(label)} for key, label in CreateOwnTour.PEOPLE_CHOICES],
            'method_choices': [{'name': label} for key, label in CreateOwnTour.METHOD_CHOICES],
        }

        return Response(data)


class TourRequestAPIView(generics.CreateAPIView):
    serializer_class = TourSerializer
    queryset = TourRequest.objects.all()
    
    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)

        if serializer.is_valid():
            serializer.save()
            msg = run(tour_request(serializer.data))
            if msg:
                return Response({'response': True})
            return Response({'response': False})
        return Response({'response': False, 'errors': serializer.errors})

    # def get(self, request, *args, **kwargs):
    #     tour = TourRequest.objects.all()
    #     acc = TourRequest.objects.all()

    #     tours_serializer = TourSerializer(tour, many=True)
    #     acc_serializer = AccSerializer(acc, many=True)

    #     return Response({
    #         'tours': tours_serializer.data,
    #         'accs': acc_serializer.data
    #     })


