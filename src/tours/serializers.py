import locale
from datetime import date
from rest_framework import serializers
from rest_framework.response import Response
from django.utils.translation import gettext_lazy as _
from .models import *

locale.setlocale(locale.LC_TIME, "ru_RU.UTF-8")


class PricesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Prices
        fields = ["id", "price", "currency", "status", "deadline", "start", "end"]


class ImagesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Images
        fields = ["id", "location", "img"]


class RouteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Route
        fields = ["id", "day", "start", "finish", "description", "hotel", "meals"]


class ReviewSerializer(serializers.ModelSerializer):
    tour_title = serializers.ReadOnlyField(source="tour.title")

    class Meta:
        model = TourReviews
        fields = [
            "id",
            "rating",
            "date",
            "name",
            "email",
            "comment",
            "tour",
            "tour_title",
        ]


class TourDetailSerializer(serializers.ModelSerializer):
    images = ImagesSerializer(many=True)
    prices = PricesSerializer(many=True)
    routes = RouteSerializer(many=True)
    type_name = serializers.SerializerMethodField(read_only=True)
    reviews = ReviewSerializer(many=True)
    avg_rating = serializers.DecimalField(max_digits=3, decimal_places=1)
    total_reviews = serializers.IntegerField()

    class Meta:
        model = Tour
        fields = [
            "id",
            "avg_rating",
            "total_reviews",
            "title",
            "type",
            "type_name",
            "duration",
            "description",
            "included",
            "excluded",
            "views",
            "images",
            "prices",
            "included",
            "excluded",
            "routes",
            "reviews",
        ]

    def get_type_name(self, obj):
        return dict(Tour.TYPE_CHOICES).get(obj.type)

    def to_representation(self, instance):
        data = super().to_representation(instance)
        reviews = instance.reviews.filter(status=1).values(
            "id", "date", "rating", "name", "comment", "date_created"
        )

        for review in reviews:
            date_created = review["date_created"]
            if date_created:
                formatted_date = date_created.strftime("%e %B %Y")
                review["date_created"] = formatted_date

        data["reviews"] = reviews
        return data


class GuaranteedToursSerializer(serializers.ModelSerializer):
    img = serializers.SerializerMethodField()
    avg_rating = serializers.FloatField()
    total_reviews = serializers.IntegerField()
    cat_name = serializers.SerializerMethodField()
    type_name = serializers.SerializerMethodField(read_only=True)
    price = serializers.DecimalField(max_digits=10, decimal_places=2, read_only=True)
    start_day = serializers.DateField(read_only=True, format="%Y, %d %B")

    class Meta:
        model = Tour
        fields = [
            "id",
            "cat_name",
            "title",
            "type",
            "type_name",
            "description",
            "duration",
            "avg_rating",
            "total_reviews",
            "img",
            "price",
            "start_day",
        ]

    def to_representation(self, instance):
        today = date.today()

        price = (
            instance.prices.filter(status=1, start__gte=today).order_by("start").first()
        )

        representation = super().to_representation(instance)

        if price:
            representation["price"] = price.price
            representation["start_day"] = price.start.strftime("%Y, %d %B")

        return representation

    def get_type_name(self, obj):
        return dict(Tour.TYPE_CHOICES).get(obj.type)

    def get_cat_name(self, obj):
        if obj.cat:
            return obj.cat.name

    def get_img(self, obj):
        images = obj.images.all()
        if images:
            return f"http://77.232.128.13:8000{images[0].img.url}"
        return None


class SliderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Slider
        fields = "__all__"


class CreateYourTourSerializer(serializers.ModelSerializer):
    class Meta:
        model = CreateOwnTour
        fields = "__all__"


# Main Page Data


class MainCatToursSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tour
        fields = ["id", "title"]


class CategoriesSerializer(serializers.ModelSerializer):
    img = serializers.SerializerMethodField()

    class Meta:
        model = Category
        fields = ["id", "name", "img"]

    def get_img(self, obj):
        if obj.img:
            request = self.context.get("request")
            if request:
                return request.build_absolute_uri(obj.img.url)
        return None


class MainRegionSerializer(serializers.ModelSerializer):
    cats = CategoriesSerializer(many=True)
    img = serializers.SerializerMethodField()

    class Meta:
        model = Region
        fields = ["id", "name", "img", "cats"]

    def get_img(self, obj):
        if obj.img:
            request = self.context.get("request")
            if request:
                return request.build_absolute_uri(obj.img.url)
        return None


class MainToursSerializer(serializers.ModelSerializer):
    img = serializers.SerializerMethodField()
    price = serializers.DecimalField(max_digits=10, decimal_places=2, read_only=True)
    start_day = serializers.DateField(read_only=True, format="%d %B")

    class Meta:
        model = Tour
        fields = ["id", "title", "price", "start_day", "img"]

    def to_representation(self, instance):
        today = date.today()

        price = (
            instance.prices.filter(status=1, start__gte=today).order_by("start").first()
        )

        representation = super().to_representation(instance)

        if price:
            representation["price"] = price.price
            representation["start_day"] = price.start.strftime("%Y, %d %B")

        return representation

    def get_img(self, obj):
        first_img = obj.images.all()
        if first_img:
            return f"http://77.232.128.13:8000{first_img[0].img.url}"
        return None


class TourRequestSerializer(serializers.ModelSerializer):
    tour_name = serializers.CharField(source="tour.name", read_only=True)

    class Meta:
        model = TourRequest
        fields = [
            "tour",
            "status",
            "first_name",
            "last_name",
            "email",
            "phone",
            "acc",
            "size",
            "start",
            "end",
            "comment",
            "tour_name",
            "acc_name",
        ]


class TourSerializer(serializers.ModelSerializer):
    tour_title = serializers.ReadOnlyField(source="tour.title")

    class Meta:
        model = TourRequest
        fields = [
            "id",
            "tour",
            "first_name",
            "last_name",
            "email",
            "phone",
            "tour_title",
            "comment",
        ]
