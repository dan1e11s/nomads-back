from django.urls import path

from .views import CreateTravelerAPIView


urlpatterns = [
    path('create', CreateTravelerAPIView.as_view(), name='create-lead')
]