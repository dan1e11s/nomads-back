from django.urls import path
from .views import *


urlpatterns = [
    path('send-feedback', SendCreateFeedbackAPIView.as_view(), name='send-and-create-feedback'),
    path('send-requests', SendCreateRequestAPIView.as_view(), name='send-and-create-request'),
    path('site-reviews-list', SiteReviewsListAPIView.as_view(), name='site-reviews-list'),
    path('site-reviews-create', SiteReviewsCreateAPIView.as_view(), name='site-reviews-create'),
]