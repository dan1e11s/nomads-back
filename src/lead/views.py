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
        serializer = self.serializer_class(data=request.data)
        if serializer.is_valid():
            serializer.save()
            try:
                msg = run(create_lead(lead=serializer.data, travelers=serializer.data['travelers']))
            except KeyError:
                msg = run(create_lead(lead=serializer))
            if msg:
                return Response({"response": True})
        return Response({"response": False}, status=status.HTTP_400_BAD_REQUEST)