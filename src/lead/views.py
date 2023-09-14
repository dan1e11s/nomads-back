from asyncio import run
from rest_framework import generics, status
from rest_framework.response import Response

from .models import LeadTraveler, Travelers
from .serializers import LeadTravelerSerializer
from src.tg_bot.bot import create_lead


class CreateTravelerAPIView(generics.CreateAPIView):
    queryset = LeadTraveler.objects.all()
    serializer_class = LeadTravelerSerializer

    def post(self, request, *args, **kwargs):
        data = request.data
        msg = run(create_lead(data['travelers'], data))
        if msg:
            return super().post(request, *args, **kwargs)
        return Response({"response": False}, status=status.HTTP_400_BAD_REQUEST)