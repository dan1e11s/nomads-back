import locale
from datetime import date
from rest_framework import serializers
from rest_framework.response import Response
from django.utils.translation import gettext_lazy as _
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
    is_youtube_link = serializers.SerializerMethodField()

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
    img = serializers.SerializerMethodField()
    avg_rating = serializers.FloatField()
    total_reviews = serializers.IntegerField()
    cat_name = serializers.SerializerMethodField()
    type_name = serializers.SerializerMethodField(read_only=True)
    price = serializers.DecimalField(max_digits=10, decimal_places=2, read_only=True)
    start_day = serializers.DateField(read_only=True, format="%Y, %d %B")
    currency = serializers.CharField(read_only=True)

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
            "currency",
        ]

    def to_representation(self, instance):
        today = date.today()

        price = (
            instance.prices.filter(status=1).order_by("start").first()
        )

        representation = super().to_representation(instance)

        if price:
            representation["price"] = price.price
            representation["currency"] = price.currency
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
            return f"https://nomadslife.travel{images[0].img.url}"
        return None


class SliderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Slider
        fields = "__all__"


# Main Page Data


class MainCatToursSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tour
        fields = ["id", "title"]


class CategoriesSerializer(serializers.ModelSerializer):
    img = serializers.SerializerMethodField()
    tours = MainCatToursSerializer(many=True)

    class Meta:
        model = Category
        fields = ["id", "name", "img", "tours"]

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
    currency = serializers.CharField(read_only=True)

    class Meta:
        model = Tour
        fields = ["id", "title", "price", "start_day", "img", "currency", "duration"]

    def to_representation(self, instance):
        today = date.today()

        price = (
            instance.prices.filter(status=1).order_by("start").first()
        )

        representation = super().to_representation(instance)

        if price:
            representation["price"] = price.price
            representation["currency"] = price.currency
            representation["start_day"] = price.start.strftime("%Y, %d %B")
            representation["status"] = price.status

        return representation

    def get_img(self, obj):
        first_img = obj.images.all()
        if first_img:
            return f"https://nomadslife.travel{first_img[0].img.url}"
        return None


class UpcomingToursSerializer(serializers.ModelSerializer):
    price = serializers.DecimalField(max_digits=10, decimal_places=2, read_only=True)
    start_day = serializers.DateField(read_only=True, format="%d %B")
    currency = serializers.CharField(read_only=True)

    class Meta:
        model = Tour
        fields = ["id", "title", "price", "start_day", "currency", "duration"]

    def to_representation(self, instance):
        today = date.today()

        price = (
            instance.prices.filter(status=1).order_by("start").first()
        )

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
