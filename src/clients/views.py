from rest_framework import status
from rest_framework import generics
from rest_framework.response import Response
from .serializers import *
from .models import *

from src.tg_bot.bot import send_feedback, send_request, new_site_review
from asyncio import run


class SendCreateFeedbackAPIView(generics.CreateAPIView):
    serializer_class = SendCreateFeedbackSerializer
    queryset = Feedback.objects.all()

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)

        if serializer.is_valid():
            serializer.save()
            msg = run(send_feedback(serializer.data))
            if msg:
                return Response({'response': True}, status=status.HTTP_200_OK)
            return Response({'response': False})
        return Response({'response': False, 'error': serializer.errors})


class SendCreateRequestAPIView(generics.CreateAPIView):
    serializer_class = SendCreateRequestSerializer
    queryset = Requests.objects.all()

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)

        if serializer.is_valid():
            serializer.save()
            msg = run(send_request(serializer.data))
            if msg:
                return Response({'response': True}, status=status.HTTP_200_OK)
            return Response({'response': False})
        return Response({'response': False, 'error': serializer.errors})


class SiteReviewsListAPIView(generics.ListAPIView):
    serializer_class = SiteReviewSerializer

    def get_queryset(self):
        queryset = SiteReviews.objects.filter(status=1)
        return queryset


class SiteReviewsCreateAPIView(generics.CreateAPIView):
    serializer_class = SiteReviewSerializer
    queryset = SiteReviews.objects.all()

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)

        if serializer.is_valid():
            serializer.save()
            msg = run(new_site_review(serializer.data))
            if msg:
                return Response({'response': True})
            return Response({'response': False})
        return Response({'response': False, 'error': serializer.errors})
