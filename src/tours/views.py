from rest_framework.response import Response
from rest_framework import generics, status, filters
from django.db.models import Prefetch, Avg, Count, Q, Sum
from .models import *
from .serializers import *
from .pagination import GuaranteedToursPagination


class CategoriesListAPIView(generics.ListAPIView):
    serializer_class = CategoriesListSerializer
    queryset = Category.objects.prefetch_related(
        Prefetch('tours', queryset=Tour.objects.select_related('cat').prefetch_related('prices', 'images'))
    )


class TourDetailAPIView(generics.RetrieveAPIView):
    serializer_class = TourDetailSerializer

    def get_queryset(self):
        queryset = Tour.objects.prefetch_related('images', 'programs', 'prices', 'accommodations').all()
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


class TopToursAPIView(generics.ListAPIView):
    serializer_class = TourListSerializer

    def get_queryset(self):
        top_tours = Tour.objects.filter(top=True).prefetch_related('images', 'prices')
        return top_tours


class TourListAPIVIew(generics.ListAPIView):
    serializer_class = TourListSerializer

    def get_queryset(self):
        cat_id = self.kwargs['cat_id']
        queryset = Tour.objects.filter(cat_id=cat_id).select_related('cat').prefetch_related('prices', 'images')
        return queryset


class GuaranteedToursAPIView(generics.ListAPIView):
    search_fields = ['cat__name', 'images__location', 'prices__economy', 'description',
                     'excluded', 'included', 'start_day', 'title']
    filter_backends = [filters.SearchFilter]
    serializer_class = GuaranteedToursSerializer

    # pagination_class = GuaranteedToursPagination

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
