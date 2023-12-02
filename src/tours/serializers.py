import sys
from datetime import date
from rest_framework import serializers
from django.utils.translation import gettext_lazy as _
from PIL import Image
from io import BytesIO
from django.core.files.uploadedfile import InMemoryUploadedFile
from .models import *


class PricesSerializer(serializers.ModelSerializer):
    start = serializers.SerializerMethodField()
    end = serializers.SerializerMethodField()
    deadline = serializers.SerializerMethodField()
    s_weekday = serializers.SerializerMethodField()
    e_weekday = serializers.SerializerMethodField()

    class Meta:
        model = Prices
        fields = [
            "id",
            "price",
            "currency",
            "status",
            "deadline",
            "start",
            "end",
            "s_weekday",
            "e_weekday",
        ]

    def get_s_weekday(self, obj):
        if obj.start:
            return obj.start.strftime("%A")

    def get_e_weekday(self, obj):
        if obj.end:
            return obj.end.strftime("%A")

    def get_deadline(seld, obj):
        if obj.deadline:
            return obj.deadline.strftime("%-d.%m")

    def get_start(self, obj):
        if obj.start:
            return obj.start.strftime("%-d %B, %Y").capitalize()
        return None

    def get_end(self, obj):
        if obj.end:
            return obj.end.strftime("%-d %B, %Y").capitalize()
        return None


class ImagesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Images
        fields = ["id", "location", "img", "alt", "img_title"]


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
    is_youtube_link = serializers.SerializerMethodField()

    class Meta:
        model = Tour
        fields = [
            "id",
            "avg_rating",
            "total_reviews",
            "title",
            "slug",
            "type",
            "price_for",
            "type_name",
            "duration",
            "short_desc",
            "description",
            "included",
            "excluded",
            "views",
            "youtube_link",
            "is_youtube_link",
            "images",
            "prices",
            "included",
            "excluded",
            "routes",
            "reviews",
        ]

    def get_is_youtube_link(self, obj):
        if obj.youtube_link:
            return True
        return False

    def get_type_name(self, obj):
        return dict(Tour.TYPE_CHOICES).get(obj.type)

    def to_representation(self, instance):
        data = super().to_representation(instance)
        reviews = instance.reviews.filter(status=1).values(
            "id", "date", "rating", "name", "comment", "date_created"
        )

        if data["youtube_link"]:
            youtube_link = data["youtube_link"]
            data["images"].append({"youtube_link": youtube_link})
            data.pop("youtube_link")

        for review in reviews:
            date_created = review["date_created"]
            if date_created:
                formatted_date = date_created.strftime("%e %B %Y")
                review["date_created"] = formatted_date

        data["reviews"] = reviews
        return data


class GuaranteedToursSerializer(serializers.ModelSerializer):
    img = serializers.URLField(read_only=True)
    alt = serializers.CharField(read_only=True)
    img_title = serializers.CharField(read_only=True)
    avg_rating = serializers.FloatField()
    total_reviews = serializers.IntegerField()
    price = serializers.DecimalField(max_digits=10, decimal_places=2, read_only=True)
    start_day = serializers.DateField(read_only=True, format="%Y, %d %B")
    currency = serializers.CharField(read_only=True)

    class Meta:
        model = Tour
        fields = [
            "id",
            "title",
            "slug",
            "type",
            "short_desc",
            "duration",
            "avg_rating",
            "total_reviews",
            "img",
            "alt",
            "img_title",
            "price",
            "start_day",
            "currency",
        ]


    def to_representation(self, instance):
        today = date.today()

        price = instance.prices.filter(status=1).order_by("start").first()
        image = instance.images.first()

        representation = super().to_representation(instance)
        representation["img"] = f"https://nomadslife.travel/api/compressed-tour-image/{image.id}"
        representation["alt"] = image.alt
        representation["img_title"] = image.img_title

        if price:
            representation["price"] = price.price
            representation["currency"] = price.currency
            representation["start_day"] = price.start.strftime("%Y, %d %B")

        return representation


class SliderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Slider
        fields = "__all__"


# Main Page Data


class MainCatToursSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tour
        fields = ["id", "title", "slug"]


class CategoriesSerializer(serializers.ModelSerializer):
    img = serializers.URLField(read_only=True)
    tours = MainCatToursSerializer(many=True)

    class Meta:
        model = Category
        fields = ["id", "name", "slug", "alt", "img_title", "img", "tours",]

    def to_representation(self, instance):
        representation = super().to_representation(instance)
        representation["img"] = f"https://nomadslife.travel/api/compressed-tour-cat-image/{instance.id}"
        return representation


class MainToursSerializer(serializers.ModelSerializer):
    img = serializers.URLField(read_only=True)
    alt = serializers.CharField(read_only=True)
    img_title = serializers.CharField(read_only=True)
    price = serializers.DecimalField(max_digits=10, decimal_places=2, read_only=True)
    start_day = serializers.DateField(read_only=True, format="%d %B")
    currency = serializers.CharField(read_only=True)

    class Meta:
        model = Tour
        fields = ["id", "title", "slug", "price", "start_day", "img", "alt", "img_title", "currency", "duration"]

    def to_representation(self, instance):

        price = instance.prices.filter(status=1).order_by("start").first()
        image = instance.images.first()

        representation = super().to_representation(instance)

        representation["img"] = f"https://nomadslife.travel/api/compressed-tour-image/{image.id}"
        representation["img_title"] = image.img_title
        representation["alt"] = image.alt

        if price:
            representation["price"] = price.price
            representation["currency"] = price.currency
            representation["start_day"] = price.start.strftime("%Y, %d %B")
            representation["status"] = price.status
            representation["img_title"] = image.img_title
            representation["alt"] = image.alt

        return representation


class UpcomingToursSerializer(serializers.ModelSerializer):
    price = serializers.DecimalField(max_digits=10, decimal_places=2, read_only=True)
    start_day = serializers.DateField(read_only=True, format="%d %B")
    currency = serializers.CharField(read_only=True)

    class Meta:
        model = Tour
        fields = ["id", "title", "slug", "price", "start_day", "currency", "duration"]

    def to_representation(self, instance):
        today = date.today()

        price = instance.prices.filter(status=1).order_by("start").first()

        representation = super().to_representation(instance)

        if price:
            representation["price"] = price.price
            representation["currency"] = price.currency
            representation["start_day"] = price.start.strftime("%d %b")
            representation["status"] = price.status

        return representation


class TourRequestSerializer(serializers.ModelSerializer):
    tour_title = serializers.ReadOnlyField(source="tour.title")
    p_start = serializers.ReadOnlyField(source="price.start", required=False)
    p_price = serializers.ReadOnlyField(source="price.price", required=False)
    p_currency = serializers.ReadOnlyField(source="price.currency", required=False)

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
            "price",
            "p_start",
            "p_price",
            "p_currency",
        ]


class ToursViewSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tour
        fields = ["id", "title", "slug"]


class CategoriesViewSerializer(serializers.ModelSerializer):
    tours = ToursViewSerializer(many=True)
    
    class Meta:
        model = Category
        fields = [
            "id",
            "name",
            "tours",
            "slug",
        ]
