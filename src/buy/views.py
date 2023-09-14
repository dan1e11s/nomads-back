from rest_framework import generics

from .models import LeadTraveler, Travelers
from .serializers import LeadTravelerSerializer


class CreateTravelerAPIView(generics.CreateAPIView):
    queryset = LeadTraveler.objects.all()
    serializer_class = LeadTravelerSerializer
