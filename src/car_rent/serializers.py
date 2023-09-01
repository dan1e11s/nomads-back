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
    img = serializers.SerializerMethodField()
    price = serializers.SerializerMethodField()
    brand_name = serializers.CharField(source='brand.name', read_only=True)

    class Meta:
        model = Car
        fields = ['id', 'brand_name', 'model', 'seats', 'year', 'rating', 'price', 'img']
        
    def get_img(self, obj):
        first_img = obj.car_images.all()
        if first_img:
            return f'http://77.232.128.13:8000{first_img[0].img.url}'
        return None
    
    def get_price(self, obj):
        prices = obj.car_prices.all()
        if prices:
            min_price = min(i.price for i in prices)
            return min_price
        return None


class CarsSerializer(serializers.ModelSerializer):
    cars = CarListSerializer(many=True)
        
    class Meta:
        model = CarType
        fields = ['id', 'name', 'cars']
    


class CarDetailSerializer(serializers.ModelSerializer):
    car_images = CarImagesSerializer(many=True)
    car_prices = CarPricesSerializer(many=True)
    brand_name = serializers.CharField(source='brand.name', read_only=True)
    type_name = serializers.CharField(source='type.name', read_only=True)

    class Meta:
        model = Car
        fields = ['id', 'type', 'type_name', 'brand', 'brand_name', 'model', 'year', 'seats', 
                  'rating', 'car_images', 'car_prices', 
                  'conditioner', 'rear_view', 'economy', 'bluetooth', 'proccess', 'features']


class CarRequestSerializer(serializers.ModelSerializer):
    brand_name = serializers.CharField(source='brand.name', read_only=True)
    type_auto_name = serializers.CharField(source='type_auto.name', read_only=True)

    class Meta:
        model = CarRentalRequest
        fields = ['name','type_auto', 'brand', 'seats', 'email', 
		  'phone', 'date_start', 'date_end', 'comment', 
 		  'brand_name', 'type_auto_name']


class BrandSerializer(serializers.ModelSerializer):
    class Meta:
        model = Brand
        fields = ('id', 'name')

class TypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = CarType
        fields = ('id', 'name')