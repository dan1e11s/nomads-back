from django.urls import path
from .views import *


urlpatterns = [
    path('car/list/<int:type_id>', CarListAPIView.as_view(), name='available-car-list'),
    path('<str:lang_code>/car/list/type', CarTypeListView.as_view(), name='car-types-list'),
    path('car/request', CarRequestAPIView.as_view(), name='request-car'),
    path('car/detail/<int:pk>', CarDetailAPIView.as_view(), name='detail-car'),
    # path('options', OptionsAPIView.as_view(), name='options')
]