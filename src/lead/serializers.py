from rest_framework import serializers
from .models import LeadTraveler, Travelers


class TravelerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Travelers
        fields = ["first_name", "last_name", "dateofborn", "gender", "nationality"]


class LeadTravelerSerializer(serializers.ModelSerializer):
    travelers = TravelerSerializer(many=True)

    class Meta:
        model = LeadTraveler
        fields = "__all__"

    def create(self, validated_data):
        travelers_list = validated_data.pop("travelers")
        instance = LeadTraveler.objects.create(**validated_data)
        for traveler in travelers_list:
            instance.travelers.create(**traveler)

        return instance
