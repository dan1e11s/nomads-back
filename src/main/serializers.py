from rest_framework import serializers
from .models import (
    Articles,
    ArticleCats,
    Requests,
    CreateOwnTour,
    SiteReviews,
    CreateOwnTourRec,
    FAQ,
    Answer,
    Accommodation,
    Meals,
    Transport,
    Categories,
    ArticleImages,
    Gallery,
    GalleryImages,
)
from src.tours.models import Tour, Category


class SendCreateRequestSerializer(serializers.ModelSerializer):
    tour_name = serializers.SerializerMethodField(read_only=True)

    class Meta:
        model = Requests
        fields = [
            "tour_name",
            "full_name",
            "email",
            "phone",
            "size",
            "budget",
            "message",
            "newsletter",
            "contact",
        ]

    def get_tour_name(self, obj):
        return obj.tour.title if obj.tour else None


class SiteReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = SiteReviews
        fields = ["firstname", "lastname", "mark", "text", "photo"]


class QuestoinAndAnswerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Answer
        fields = ["question", "answer"]


class FAQSerializer(serializers.ModelSerializer):
    faq = QuestoinAndAnswerSerializer(many=True)

    class Meta:
        model = FAQ
        fields = ["name", "faq"]


class AccommodationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Accommodation
        fields = ["name"]


class MealsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Meals
        fields = ["name"]


class TransportSerializer(serializers.ModelSerializer):
    class Meta:
        model = Transport
        fields = ["name"]


class CategoriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Categories
        fields = ["name"]


class CreateOwnTourRecSerializer(serializers.ModelSerializer):
    categories = CategoriesSerializer(many=True)
    meals = MealsSerializer(many=True)
    transport = TransportSerializer(many=True)
    accommodation = AccommodationSerializer(many=True)

    class Meta:
        model = CreateOwnTourRec
        fields = ["categories", "accommodation", "transport", "meals"]


class CreateYourTourSerializer(serializers.ModelSerializer):
    cats = serializers.ListField(
        child=serializers.CharField(), write_only=True, required=False
    )
    accommodation = serializers.ListField(
        child=serializers.CharField(), write_only=True, required=False
    )

    class Meta:
        model = CreateOwnTour
        fields = [
            "full_name",
            "email",
            "phone",
            "cats",
            "accommodation",
            "transport",
            "meal",
            "people",
            "comment",
            "datefrom",
            "dateto",
            "gid",
        ]

    def to_internal_value(self, data):
        cats_list = data.pop("cats", [])
        accommodation_list = data.pop("accommodation", [])
        instance = super().to_internal_value(data)

        formatted_cats = ", \n".join(
            [f"{i + 1} - {cat}" for i, cat in enumerate(cats_list)]
        )
        formatted_accommodation = ", \n".join(
            [
                f"{i + 1} - {accommodation}"
                for i, accommodation in enumerate(accommodation_list)
            ]
        )

        instance["cats"] = formatted_cats
        instance["accommodation"] = formatted_accommodation
        return instance


class ArticleNavSerializer(serializers.ModelSerializer):
    class Meta:
        model = ArticleCats
        fields = [
            "id",
            "name",
            "slug",
        ]


class ArticleImagesSerializer(serializers.ModelSerializer):
    img = serializers.SerializerMethodField()

    class Meta:
        model = ArticleImages
        fields = ["img"]

    def get_img(self, obj):
        request = self.context.get("request")
        if obj.img and hasattr(obj.img, "url"):
            return request.build_absolute_uri(obj.img.url)
        return None


class ArticleListSerializer(serializers.ModelSerializer):
    poster = serializers.SerializerMethodField()

    class Meta:
        model = Articles
        fields = [
            "id",
            "title",
            "slug",
            "short_desc",
            "full_desc",
            "poster",
        ]

    def get_poster(self, obj):
        request = self.context.get("request")
        if obj.poster and hasattr(obj.poster, "url"):
            return request.build_absolute_uri(obj.poster.url)
        return None


class ArticleMainSerializer(serializers.ModelSerializer):
    class Meta:
        model = Articles
        fields = ["id", "title", "slug"]


class ArticleCatsMainSerializer(serializers.ModelSerializer):
    articles = ArticleMainSerializer(many=True)

    class Meta:
        model = ArticleCats
        fields = ["id", "name", "slug", "articles"]


class ArticleDetailSerializer(serializers.ModelSerializer):
    art_images = ArticleImagesSerializer(many=True)
    created_at = serializers.SerializerMethodField()

    class Meta:
        model = Articles
        fields = [
            "id",
            "title",
            "slug",
            "short_desc",
            "full_desc",
            "poster",
            "link",
            "views",
            "created_at",
            "art_images",
        ]

    def get_created_at(self, obj):
        return obj.created_at.strftime("%d %B %Yг.")


class RightbarCategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = ["id", "name"]


class GalleryImagesSerializer(serializers.ModelSerializer):
    img = serializers.SerializerMethodField()

    class Meta:
        model = GalleryImages
        fields = ["id", "name", "img", "created_at"]

    def get_img(self, obj):
        if obj.img:
            return f"https://nomadslife.travel{obj.img.url}"
        return None


class GalleryFilterSerializer(serializers.ModelSerializer):
    gallery_images = GalleryImagesSerializer(many=True)

    class Meta:
        model = Gallery
        fields = ["id", "name", "gallery_images"]


class GalleryListAPIViewSerializer(serializers.ModelSerializer):
    poster = serializers.SerializerMethodField()

    class Meta:
        model = Gallery
        fields = ["id", "name", "youtube_link", "poster"]
        
    def get_poster(self, obj):
        images = obj.gallery_images.all()
        if images:
            return f"https://nomadslife.travel{images[0].img.url}"
        return None
