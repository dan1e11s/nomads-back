from django.urls import path
from .views import *

urlpatterns = [
    path("tour/list/<str:slug>", TourListAPIVIew.as_view(), name="category-tours-list"),
    path("tour/detail/<str:slug>", TourDetailAPIView.as_view(), name="tour-detail"),
    path("tour/review-create", ReviewCreateAPIView.as_view(), name="create-review"),
    path("tour/dates", DatesListAPIView.as_view(), name="dates"),
    path("<str:lang_code>/tour/guaranteed", GuaranteedToursAPIView.as_view(), name="guaranteed-tours-list"),
    path("<str:lang_code>/tour/slider", SliderAPIView.as_view(), name="main-page-slider"),
    path("<str:lang_code>/tour/main", MainPageAPIView.as_view(), name="main"),
    path("tour/request", TourRequestAPIView.as_view(), name="request-tour"),
    path("<str:lang_code>/tour/categories", CategoriesAPIView.as_view(), name="categories"),
    path("<str:lang_code>/tour/rightbar", ToursView.as_view(), name='tours')
]
