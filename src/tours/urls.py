from django.urls import path
from .views import *

urlpatterns = [
    # path('list/<int:cat_id>', TourListAPIVIew.as_view(), name='category-tours-list'),
    path('detail/<int:pk>', TourDetailAPIView.as_view(), name='tour-detail'),
    path('review-create', ReviewCreateAPIView.as_view(), name='create-review'),
    path('guaranteed', GuaranteedToursAPIView.as_view(), name='guaranteed-tours-list'),
    path('slider', SliderAPIView.as_view(), name='main-page-slider'),
    path('main', MainPageAPIView.as_view(), name='main'),
    path('create-your-tour', CreateYourTourAPIView.as_view(), name='your-tour'),
]
