from rest_framework.response import Response
from rest_framework import generics, filters, views
from django.db.models import Avg, Count, Q
from .models import *
from .serializers import *
from .pagination import GuaranteedToursPagination
from src.tg_bot.bot import send_tour_review, tour_request
from asyncio import run

from PIL import Image
from io import BytesIO
from django.http import FileResponse
from rest_framework.generics import get_object_or_404


class TourListAPIVIew(generics.ListAPIView):
    serializer_class = GuaranteedToursSerializer
    pagination_class = GuaranteedToursPagination

    def get_queryset(self):
        tours = Tour.objects.filter(cat__slug=self.kwargs["slug"]).prefetch_related(
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
    lookup_field = "slug"

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
        tours = Tour.objects.filter(type=1, lang=self.kwargs["lang_code"]).prefetch_related("prices", "images")

        tours = tours.annotate(
            avg_rating=Avg("reviews__rating", filter=Q(reviews__status=1)),
            total_reviews=Count("reviews", filter=Q(reviews__status=1)),
        )

        return tours.select_related("cat")


class SliderAPIView(generics.ListAPIView):
    serializer_class = SliderSerializer

    def get_queryset(self):
        queryset = Slider.objects.filter(is_active=True, lang=self.kwargs["lang_code"])
        sorted_queryset = sorted(queryset, key=lambda obj: obj.id)
        return sorted_queryset


class MainPageAPIView(views.APIView):
    def get(self, request, lang_code, *args, **kwargs):
        tours = Tour.objects.filter(top=True, lang=lang_code).prefetch_related("images", "prices")
        upcoming_tours = (
            Tour.objects.filter(type=2, lang=lang_code)
            .prefetch_related("images", "prices")
            .order_by("-id")[:4]
        )

        tours_serializer = MainToursSerializer(tours, many=True)
        upcoming_tours_serializer = UpcomingToursSerializer(upcoming_tours, many=True)

        response_data = {
            "tours": tours_serializer.data,
            "upcoming_tour": upcoming_tours_serializer.data,
        }

        return Response(response_data)


class CategoriesAPIView(generics.ListAPIView):
    serializer_class = CategoriesSerializer

    def get_queryset(self):
        return Category.objects.filter(lang=self.kwargs["lang_code"])

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


class ToursView(generics.ListAPIView):
    serializer_class = CategoriesViewSerializer
    
    def get_queryset(self):
        return Category.objects.filter(lang=self.kwargs["lang_code"])



class CompressedTourImageView(views.APIView):
    def get(self, request, image_id):
        image = get_object_or_404(Images, id=image_id)
        compressed_image = self.compress_image(image.img)

        response = FileResponse(compressed_image, content_type='image/webp')
        return response

    def compress_image(self, image):
        img = Image.open(image.path)

        img.thumbnail((500, 500))
        output = BytesIO()
        img.save(output, format='WEBP', quality=50)
        output.seek(0)

        return output

    
class CompressedTourCatImageView(views.APIView):
    def get(self, request, cat_id):
        obj = get_object_or_404(Category, id=cat_id)
        compressed_image = self.compress_image(obj.img)

        response = FileResponse(compressed_image, content_type='image/webp')
        return response

    def compress_image(self, image):
        img = Image.open(image.path)

        img.thumbnail((600, 600))
        output = BytesIO()
        img.save(output, format='WEBP', quality=50)
        output.seek(0)

        return output
    