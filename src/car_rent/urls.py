from django.urls import path
from .views import *


urlpatterns = [
    path('list', CarListAPIView.as_view(), name='available-car-list'),
]