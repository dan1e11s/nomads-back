from rest_framework import serializers
from rest_framework.response import Response
from django.utils.translation import gettext_lazy as _
from .models import *


class PricesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Prices
        fields = ['id', 'person', 'economy', 'comfort', 'lux']


class ImagesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Images
        fields = ['id', 'location', 'img']


class ProgramsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Program
        fields = ['id', 'day', 'start', 'finish', 'description', 'meals']


class AccommodationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Accommodation
        fields = ['id', 'location', 'economy_hotel', 'comfort_hotel', ]


class TourListSerializer(serializers.ModelSerializer):
    prices = PricesSerializer(many=True)
    images = ImagesSerializer(many=True)
    type_name = serializers.SerializerMethodField()
    start_day = serializers.SerializerMethodField()

    class Meta:
        model = Tour
        fields = ['id', 'title', 'start_day', 'type', 'type_name', 'duration', 'description', 'images', 'prices']

    def get_type_name(self, obj):
        return dict(Tour.TYPE_CHOICES).get(obj.type)

    def get_start_day(self, obj):
        if obj.type == 1:
            if obj.start_day:
                formatted_date = obj.start_day.strftime('%e %B %Y')
                return formatted_date
            return _('Дата началы не указан')
        return _('Тур не гарантированный')


class CategoriesListSerializer(serializers.ModelSerializer):
    tours = TourListSerializer(many=True)

    class Meta:
        model = Category
        fields = ['id', 'name', 'img', 'tours']


class ReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = TourReviews
        fields = ['id', 'rating', 'date', 'name', 'email', 'comment', 'tour', 'status']


class TourDetailSerializer(serializers.ModelSerializer):
    images = ImagesSerializer(many=True)
    programs = ProgramsSerializer(many=True)
    prices = PricesSerializer(many=True)
    accommodations = AccommodationSerializer(many=True)
    type_name = serializers.SerializerMethodField(read_only=True)
    reviews = ReviewSerializer(many=True)
    start_day = serializers.SerializerMethodField()
    avg_rating = serializers.FloatField()
    total_reviews = serializers.IntegerField()
    url = serializers.SerializerMethodField()

    class Meta:
        model = Tour
        fields = ['url', 'id', 'avg_rating', 'total_reviews', 'title', 'start_day', 'type', 'type_name', 'duration',
                  'description', 'included', 'excluded', 'views', 'images', 'programs',
                  'prices', 'included', 'excluded', 'accommodations', 'reviews',
                  ]

    def get_url(self, obj):
        return f"http://localhost:8000{obj.get_absolute_url()}"

    def get_start_day(self, obj):
        if obj.start_day:
            if obj.type == 1:
                return obj.start_day.strftime('%e %B')
            return _('Тур не гарантированный')
        return _('Дата началы не указан')

    def get_type_name(self, obj):
        return dict(Tour.TYPE_CHOICES).get(obj.type)

    def to_representation(self, instance):
        data = super().to_representation(instance)
        reviews = instance.reviews.filter(status=1).values('id', 'date', 'rating', 'name', 'comment', 'date_created')

        for review in reviews:
            date_created = review['date_created']
            if date_created:
                formatted_date = date_created.strftime('%e %B %Y')
                review['date_created'] = formatted_date

        data['reviews'] = reviews
        return data


class GuaranteedToursSerializer(serializers.ModelSerializer):
    images = ImagesSerializer(many=True)
    prices = PricesSerializer(many=True)
    start_day = serializers.SerializerMethodField()
    avg_rating = serializers.FloatField()
    total_reviews = serializers.IntegerField()
    cat_name = serializers.SerializerMethodField()

    class Meta:
        model = Tour
        fields = ['id', 'cat_name', 'title', 'description', 'duration', 'start_day', 'avg_rating', 'total_reviews',
                  'images', 'prices']

    def get_start_day(self, obj):
        if obj.start_day:
            return obj.start_day.strftime('%e %B')

    def get_cat_name(self, obj):
        if obj.cat:
            return obj.cat.name


class SliderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Slider
        fields = '__all__'
