from django.urls import path
from .views import *


urlpatterns = [
    path('list', CarListAPIView.as_view(), name='available-car-list'),
    path('request', CarRequestAPIView.as_view(), name='request-car'),
    path('detail/<int:pk>', CarDetailAPIView.as_view(), name='detail-car'),
    path('options', OptionsAPIView.as_view(), name='options')
]