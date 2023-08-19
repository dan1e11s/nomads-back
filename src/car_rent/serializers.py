from rest_framework import serializers

from .models import *


class CarImagesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Images
        fields = '__all__'


class CarPricesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Prices
        fields = '__all__'


class CarListSerializer(serializers.ModelSerializer):
    car_images = CarImagesSerializer(many=True)
    car_prices = CarPricesSerializer(many=True)

    class Meta:
        model = Car
        fields = ['type', 'brand', 'model', 'seats', 'year', 'rating', 'car_images', 'car_prices']
