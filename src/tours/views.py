from datetime import date
from rest_framework.response import Response
from rest_framework import generics, filters, views
from django.db.models import Avg, Count, Q
from .models import *
from .serializers import *
from .pagination import GuaranteedToursPagination
from src.tg_bot.bot import send_tour_review, tour_request
from asyncio import run


class TourListAPIVIew(generics.ListAPIView):
    serializer_class = GuaranteedToursSerializer

    pagination_class = GuaranteedToursPagination

    def get_queryset(self):
        tours = Tour.objects.filter(cat_id=self.kwargs["cat_id"]).prefetch_related(
            "prices",
            "images",
        )

        tours = tours.annotate(
            avg_rating=Avg("reviews__rating", filter=Q(reviews__status=1)),
            total_reviews=Count("reviews", filter=Q(reviews__status=1)),
        )
        return tours.select_related("cat")


class TourDetailAPIView(generics.RetrieveAPIView):
    serializer_class = TourDetailSerializer

    def get_queryset(self):
        queryset = Tour.objects.prefetch_related("images", "prices", "routes").all()
        tours = queryset.annotate(
            avg_rating=Avg("reviews__rating", filter=Q(reviews__status=1)),
            total_reviews=Count("reviews", filter=Q(reviews__status=1)),
        )

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
                return Response({"response": True})
            return Response({"response": False})
        return Response({"response": False, "errors": serializer.errors})


class DatesListAPIView(views.APIView):
    def get(self, request, *args, **kwargs):
        dates = last_12_months_choices()
        data = []
        for i in dates:
            for j in i[:1]:
                data.append({"name": j})

        return Response(data)


class GuaranteedToursAPIView(generics.ListAPIView):
    search_fields = [
        "cat__name",
        "images__location",
        "prices__economy",
        "description",
        "excluded",
        "included",
        "start_day",
        "title",
    ]
    filter_backends = [filters.SearchFilter]
    serializer_class = GuaranteedToursSerializer

    pagination_class = GuaranteedToursPagination

    def get_queryset(self):
        tours = Tour.objects.filter(type=1).prefetch_related("prices", "images")

        tours = tours.annotate(
            avg_rating=Avg("reviews__rating", filter=Q(reviews__status=1)),
            total_reviews=Count("reviews", filter=Q(reviews__status=1)),
        )

        return tours.select_related("cat")


class SliderAPIView(generics.ListAPIView):
    serializer_class = SliderSerializer

    def get_queryset(self):
        queryset = Slider.objects.filter(is_active=True)
        sorted_queryset = sorted(queryset, key=lambda obj: obj.id)
        return sorted_queryset


class MainPageAPIView(views.APIView):
    def get(self, request, *args, **kwargs):
        tours = Tour.objects.filter(top=True).prefetch_related("images", "prices")
        regions = Region.objects.prefetch_related("cats")
        upcoming_tours = Tour.objects.filter(type=2).prefetch_related("images", "prices").order_by("-id")[:4]

        tours_serializer = MainToursSerializer(tours, many=True)
        regions_serializer = MainRegionSerializer(
            regions, many=True, context={"request": self.request}
        )
        upcoming_tours_serializer = MainToursSerializer(upcoming_tours, many=True)

        response_data = {
            "tours": tours_serializer.data,
            "upcoming_tour": upcoming_tours_serializer.data,
            "regions": regions_serializer.data,
        }

        return Response(response_data)


class TourRequestAPIView(generics.CreateAPIView):
    serializer_class = TourRequestSerializer
    queryset = TourRequest.objects.all()

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)

        if serializer.is_valid():
            serializer.save()
            msg = run(tour_request(serializer.data))
            if msg:
                return Response({"response": True})
            return Response({"response": False})
        return Response({"response": False, "errors": serializer.errors})
