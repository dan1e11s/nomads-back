from rest_framework import status, generics
from rest_framework.response import Response
from rest_framework.filters import SearchFilter
from rest_framework.views import APIView
from django.core.exceptions import ObjectDoesNotExist
from .serializers import (
    SendCreateRequestSerializer,
    SiteReviewSerializer,
    FAQSerializer,
    CreateOwnTourRecSerializer,
    CreateYourTourSerializer,
    ArticleNavSerializer,
    ArticleListSerializer,
    ArticleCats,
    ArticleDetailSerializer,
    ArticleCatsMainSerializer,
    RightbarToursSerializer,
    GalleryListAPIViewSerializer,
    GalleryFilterSerializer,
    GalleryImagesSerializer
)
from .models import (
    Articles,
    ArticleCats,
    Requests,
    CreateOwnTour,
    SiteReviews,
    CreateOwnTourRec,
    FAQ,
    Gallery,
    GalleryImages,
)

from src.tours.models import Tour
from src.tg_bot.bot import send_request, new_site_review, create_own_tour
from src.base.pagination import ReviewsListPagination
from asyncio import run


class SendCreateRequestAPIView(generics.CreateAPIView):
    serializer_class = SendCreateRequestSerializer
    queryset = Requests.objects.all()

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)

        if serializer.is_valid():
            serializer.save()
            msg = run(send_request(serializer.data))
            if msg:
                return Response({"response": True}, status=status.HTTP_200_OK)
            return Response({"response": False})
        return Response({"response": False, "error": serializer.errors})


class SiteReviewsListAPIView(generics.ListAPIView):
    serializer_class = SiteReviewSerializer
    pagination_class = ReviewsListPagination

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
                return Response({"response": True})
            return Response({"response": False})
        return Response({"response": False, "error": serializer.errors})


class FAQAPIView(generics.ListAPIView):
    serializer_class = FAQSerializer
    queryset = FAQ.objects.prefetch_related("faq")
    search_fields = ["name", "faq__question"]
    filter_backends = [SearchFilter]


class CreateOwnTourRecView(APIView):
    def get(self, request):
        queryset = CreateOwnTourRec.objects.get(pk=1)
        serializer = CreateOwnTourRecSerializer(queryset)

        return Response(serializer.data)


class CreateYourTourAPIView(generics.CreateAPIView):
    serializer_class = CreateYourTourSerializer
    queryset = CreateOwnTour.objects.all()

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)
        cats = ", ".join(request.data.get("cats", []))
        accommodation = ", ".join(request.data.get("accommodation", []))

        if serializer.is_valid():
            serializer.save()
            msg = run(create_own_tour(serializer.data, cats, accommodation))
            if msg:
                return Response({"response": True})
            return Response({"response": False})
        return Response(serializer.errors)


class ArticleNavView(APIView):
    def get(self, request):
        queryset = ArticleCats.objects.all().prefetch_related("articles")
        serializer = ArticleNavSerializer(queryset, many=True)

        return Response(serializer.data)


class ArticleListView(APIView):
    def get(self, request, cat_id):
        articles_queryset = Articles.objects.filter(cat_id=cat_id)
        articles_serializer = ArticleListSerializer(
            articles_queryset, many=True, context={"request": request}
        )

        rightbar_queryset = ArticleCats.objects.all().prefetch_related("articles")
        rightbar_serializer = ArticleCatsMainSerializer(rightbar_queryset, many=True)

        tours_queryset = Tour.objects.filter(type=1).order_by("-id")[:5]
        tours_serializer = RightbarToursSerializer(tours_queryset, many=True)

        return Response(
            {
                "articles": articles_serializer.data,
                "categories": rightbar_serializer.data,
                "tours": tours_serializer.data,
            }
        )


class ArticleDetailView(APIView):
    def get(self, request, id):
        try:
            queryset = Articles.objects.get(id=id)
            serializer = ArticleDetailSerializer(queryset, context={"request": request})

            rightbar_queryset = ArticleCats.objects.all().prefetch_related("articles")
            rightbar_serializer = ArticleCatsMainSerializer(
                rightbar_queryset, many=True
            )

            tours_queryset = Tour.objects.filter(type=1).order_by("-id")[:5]
            tours_serializer = RightbarToursSerializer(tours_queryset, many=True)

            queryset.views += 1
            queryset.save()

            return Response(
                {
                    "detail": [serializer.data],
                    "categories": rightbar_serializer.data,
                    "tours": tours_serializer.data,
                }
            )
        except ObjectDoesNotExist:
            return Response({"response": False}, status=status.HTTP_404_NOT_FOUND)


class ArticlesListAPIView(APIView):
    def get(self, request):
        rightbar_queryset = ArticleCats.objects.all().prefetch_related("articles")
        rightbar_serializer = ArticleCatsMainSerializer(rightbar_queryset, many=True)

        tours_queryset = Tour.objects.filter(type=1).order_by("-id")[:5]
        tours_serializer = RightbarToursSerializer(tours_queryset, many=True)

        return Response(
            {"categories": rightbar_serializer.data, "tours": tours_serializer.data}
        )


class GalleryListView(generics.ListAPIView):
    queryset = Gallery.objects.all()
    serializer_class = GalleryListAPIViewSerializer


class GalleryFilterView(APIView):
    def get(self, request, gallery_id):
        queryset = Gallery.objects.get(id=gallery_id)
        serializer = GalleryFilterSerializer(queryset)

        return Response(serializer.data)
