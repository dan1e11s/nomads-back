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
        fields = ['id', 'description']


class RouteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Route
        fields = ['id', 'day', 'start', 'finish',
                  'description', 'hotel', 'meals']


class ReviewSerializer(serializers.ModelSerializer):
    tour_title = serializers.ReadOnlyField(source='tour.title')

    class Meta:
        model = TourReviews
        fields = ['id', 'rating', 'date', 'name',
                  'email', 'comment', 'tour', 'tour_title']


class TourDetailSerializer(serializers.ModelSerializer):
    images = ImagesSerializer(many=True)
    programs = ProgramsSerializer(many=True)
    prices = PricesSerializer(many=True)
    routes = RouteSerializer(many=True)
    type_name = serializers.SerializerMethodField(read_only=True)
    reviews = ReviewSerializer(many=True)
    start_day = serializers.SerializerMethodField()
    avg_rating = serializers.DecimalField(max_digits=3, decimal_places=1)
    total_reviews = serializers.IntegerField()

    class Meta:
        model = Tour
        fields = ['id', 'avg_rating', 'total_reviews', 'title', 'start_day', 'type', 'type_name', 'duration',
                  'description', 'included', 'excluded', 'views', 'images', 'programs',
                  'prices', 'included', 'excluded', 'routes', 'reviews',
                  ]

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
        reviews = instance.reviews.filter(status=1).values(
            'id', 'date', 'rating', 'name', 'comment', 'date_created')

        for review in reviews:
            date_created = review['date_created']
            if date_created:
                formatted_date = date_created.strftime('%e %B %Y')
                review['date_created'] = formatted_date

        data['reviews'] = reviews
        return data


class GuaranteedToursSerializer(serializers.ModelSerializer):
    img = serializers.SerializerMethodField()
    price = serializers.SerializerMethodField()
    start_day = serializers.SerializerMethodField()
    avg_rating = serializers.FloatField()
    total_reviews = serializers.IntegerField()
    cat_name = serializers.SerializerMethodField()

    class Meta:
        model = Tour
        fields = ['id', 'cat_name', 'title', 'description', 'duration', 'start_day', 'avg_rating', 'total_reviews',
                  'img', 'price']

    def get_start_day(self, obj):
        if obj.start_day:
            return obj.start_day.strftime('%e %B')

    def get_cat_name(self, obj):
        if obj.cat:
            return obj.cat.name
        
    def get_img(self, obj):
        images = obj.images.all()
        if images:
            return f'http://77.232.128.13:8000{images[0].img.url}'
        return None
    
    def get_price(self, obj):
        prices = obj.prices.all()
        if prices:
            return min(i.economy for i in prices)
        return None


class SliderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Slider
        fields = '__all__'


class CreateYourTourSerializer(serializers.ModelSerializer):

    class Meta:
        model = CreateOwnTour
        fields = '__all__'

# Main Page Data


class MainCatToursSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tour
        fields = ['id', 'title']


class MainCategoriesSerializer(serializers.ModelSerializer):
    tours = MainCatToursSerializer(many=True)
    img = serializers.SerializerMethodField()

    class Meta:
        model = Category
        fields = ['id', 'name', 'img', 'tours']
        
    def get_img(self, obj):
        if obj.img:
            return f'http://77.232.128.13:8000{obj.img.url}'
        return None
        

class MainToursSerializer(serializers.ModelSerializer):
    img = serializers.SerializerMethodField()
    start_day = serializers.SerializerMethodField()
    price = serializers.SerializerMethodField()

    class Meta:
        model = Tour
        fields = ['id', 'title', 'start_day', 'price', 'img']


    def get_start_day(self, obj):
        if obj.type == 1:
            if obj.start_day:
                formatted_date = obj.start_day.strftime('%e %B')
                return formatted_date
            return _('Дата началы не указан')
        return _('Тур не гарантированный')
    
    def get_price(self, obj):
        prices = obj.prices.all()
        if prices:
            min_price = min(i.economy for i in prices)
            return min_price
        return None
    
    def get_img(self, obj):
        first_img = obj.images.all()
        if first_img:
            return f'http://77.232.128.13:8000{first_img[0].img.url}'
        return None

