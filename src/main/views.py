from PIL import Image
from io import BytesIO
from rest_framework import status, generics
from rest_framework.response import Response
from rest_framework.filters import SearchFilter
from rest_framework.views import APIView
from django.http import FileResponse
from django.core.exceptions import ObjectDoesNotExist
from django.views.generic import TemplateView
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
    RightbarCategorySerializer,
    GalleryListAPIViewSerializer,
    GalleryFilterSerializer,
    GalleryImagesSerializer,
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

from src.tours.models import Tour, Category
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
    
    def get_queryset(self):
        return FAQ.objects.filter(lang=self.kwargs["lang_code"]).prefetch_related("faq")


class CreateOwnTourRecView(APIView):
    def get(self, request, lang_code):
        try:
            queryset = CreateOwnTourRec.objects.get(lang=lang_code)
            serializer = CreateOwnTourRecSerializer(queryset)

            return Response(serializer.data)
        except ObjectDoesNotExist:
            return Response({"detail": "Страница не найдена"}, status=status.HTTP_404_NOT_FOUND)

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
    def get(self, request, lang_code):
        queryset = ArticleCats.objects.filter(lang=lang_code).prefetch_related("articles")
        serializer = ArticleNavSerializer(queryset, many=True)

        return Response(serializer.data)


class ArticleListView(generics.ListAPIView):
    serializer_class = ArticleListSerializer

    def get_queryset(self):
        return Articles.objects.filter(cat__slug=self.kwargs["slug"])


class ArticleDetailView(APIView):
    def get(self, request, slug):
        try:
            queryset = Articles.objects.get(slug=slug)
            serializer = ArticleDetailSerializer(queryset, context={"request": request})

            queryset.views += 1
            queryset.save()

            return Response(serializer.data)
        except ObjectDoesNotExist:
            return Response({"response": False}, status=status.HTTP_404_NOT_FOUND)


class ArticlesListAPIView(APIView):
    def get(self, request, lang_code):
        rightbar_queryset = ArticleCats.objects.filter(lang=lang_code).prefetch_related(
            "articles"
        )
        rightbar_serializer = ArticleCatsMainSerializer(rightbar_queryset, many=True)

        return Response(
            {"categories": rightbar_serializer.data}
        )


class GalleryListView(APIView):
    def get(self, request, lang_code):
        queryset = Gallery.objects.filter(lang=lang_code)
        serializer = GalleryListAPIViewSerializer(queryset, many=True)

        return Response(serializer.data)


class GalleryFilterView(APIView):
    def get(self, request, gallery_id):
        try:
            queryset = Gallery.objects.get(id=gallery_id)
            serializer = GalleryFilterSerializer(queryset)

            return Response(serializer.data)
        except ObjectDoesNotExist:
            return Response(
                {"detial": "Страница не найдена."}, status=status.HTTP_404_NOT_FOUND
            )


class SitemapView(TemplateView):
    template_name = "sitemapxml.html"
    content_type = "application/xml"

    def get_context_data(self, **kwargs):
        context =  super().get_context_data(**kwargs)
        context["articles"] = Articles.objects.order_by("last_mod")
        context["article_cats"] = ArticleCats.objects.order_by("last_mod")
        context["tours"] = Tour.objects.order_by("last_mod")
        context["tour_cats"] = Category.objects.order_by("last_mod")
        context["languages"] = {
            "en",
            "ru",
            "de",
            "fr",
            "es",
            "jp",
        }
        return context
    

class CompressedArticleImageView(APIView):
    def get(self, request, article_id):
        obj = generics.get_object_or_404(Articles, id=article_id)
        compressed_image = self.compress_image(obj.poster)

        response = FileResponse(compressed_image, content_type='image/webp')
        return response

    def compress_image(self, image):
        img = Image.open(image.path)

        img.thumbnail((500, 500))
        output = BytesIO()
        img.save(output, format='WEBP', quality=50)
        output.seek(0)

        return output