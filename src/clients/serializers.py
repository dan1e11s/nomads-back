from rest_framework import serializers
from .models import *


class SendCreateFeedbackSerializer(serializers.ModelSerializer):
    class Meta:
        model = Feedback
        fields = ['name', 'email', 'phone', 'comment', 'created_at']


class SendCreateRequestSerializer(serializers.ModelSerializer):
    tour_name = serializers.SerializerMethodField(read_only=True)

    class Meta:
        model = Requests
        fields = [
            'tour_name', 'first_name', 'last_name', 'email', 'phone', 'size',
            'budget', 'message', 'newsletter', 'contact'
        ]

    def get_tour_name(self, obj):
        return obj.tour.title if obj.tour else None


class SiteReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = SiteReviews
        fields = ['full_name', 'mark', 'text', 'photo']
