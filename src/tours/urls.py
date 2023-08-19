from django.urls import path
from .views import *

urlpatterns = [
    path('categories', CategoriesListAPIView.as_view(), name='tour-categories-list'),
    path('list/<int:cat_id>', TourListAPIVIew.as_view(), name='category-tours-list'),
    path('detail/<int:pk>', TourDetailAPIView.as_view(), name='tour-detail'),
    path('review-create', ReviewCreateAPIView.as_view(), name='create-review'),
    path('top-tours', TopToursAPIView.as_view(), name='top-5-tours'),
    path('guaranteed', GuaranteedToursAPIView.as_view(), name='guaranteed-tours-list'),
    path('slider', SliderAPIView.as_view(), name='main-page-slider')
]
