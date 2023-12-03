from django.contrib import admin
from django.utils.safestring import mark_safe
from .models import *


class InformationInline(admin.StackedInline):
    model = Information
    extra = 0


@admin.register(Requests)
class RequestsAdmin(admin.ModelAdmin):
    model = Requests
    list_display = ("full_name", "status", "contact", "newsletter", "created_at")
    search_fields = (
        "first_name",
        "last_name",
        "email",
        "phone",
        "message",
    )
    list_filter = (
        "contact",
        "newsletter",
    )
    list_editable = ("status",)
    inlines = (InformationInline,)

    def has_add_permission(self, request):
        return False


@admin.register(SiteReviews)
class SiteReviewsAdmin(admin.ModelAdmin):
    list_display = (
        "firstname",
        "lastname",
        "mark",
        "status",
        "created_at",
    )
    list_display_links = ("firstname",)
    list_editable = ("status",)
    readonly_fields = (
        "firstname",
        "lastname",
        "mark",
        "text",
        "photo",
        "created_at",
    )

    def has_add_permission(self, request):
        return False


class FAQInline(admin.StackedInline):
    model = Answer
    extra = 0


@admin.register(FAQ)
class FAQAdmin(admin.ModelAdmin):
    list_display = ("name",)
    list_display_links = ("name",)
    inlines = (FAQInline,)


class AccommodationInline(admin.StackedInline):
    model = Accommodation
    extra = 0


class MealsInline(admin.StackedInline):
    model = Meals
    extra = 0


class TransportInline(admin.StackedInline):
    model = Transport
    extra = 0


class CategoriesInline(admin.StackedInline):
    model = Categories
    extra = 0


@admin.register(CreateOwnTourRec)
class CreateOwnTourRecAdmin(admin.ModelAdmin):
    inlines = (
        CategoriesInline,
        AccommodationInline,
        MealsInline,
        TransportInline,
    )

    def has_add_permission(self, request):
        existing_objects_count = self.model.objects.count()

        if existing_objects_count <= 6:
            return False
        return True

    def has_delete_permission(self, request, obj=None):
        return False


@admin.register(CreateOwnTour)
class CreateOwnTourAdmin(admin.ModelAdmin):
    list_display = (
        "full_name",
        "datefrom",
        "dateto",
        "status",
    )
    list_display_links = ("full_name",)
    list_editable = ("status",)
    search_fields = (
        "full_name",
        "email",
        "datefrom",
        "dateto",
        "comment",
    )


@admin.register(ArticleCats)
class ArticleCatsAdmin(admin.ModelAdmin):
    list_display = ("id", "name", "created_at")
    list_display_links = list_display
    list_filter = ("lang",)
    prepopulated_fields = {"slug": ("name",)}
    search_fields = ("name", "slug",)
    readonly_fields = ("created_at", "last_mod")


class ArticleImagesInline(admin.StackedInline):
    model = ArticleImages
    extra = 0


@admin.register(Articles)
class ArticlesAdmin(admin.ModelAdmin):
    list_display = ("id", "title", "cat", "created_at", "views", "get_html_poster",)
    list_display_links = ("id", "title",)
    list_filter = ("cat", "lang",)
    search_fields = ("title", "slug",)
    inlines = (ArticleImagesInline,)
    prepopulated_fields = {"slug": ("title",)}
    readonly_fields = ("created_at", "last_mod")
    
    def get_html_poster(self, object):
        if object.poster:
            return mark_safe(f"<img src='{object.poster.url}' height='60'>")

    get_html_poster.short_description = 'Постер'


class GalleryImagesInline(admin.StackedInline):
    model = GalleryImages
    extra = 30


@admin.register(Gallery)
class GalleryAdmin(admin.ModelAdmin):
    list_display = ("id", "name")
    list_display_links = list_display
    inlines = (GalleryImagesInline,)
    readonly_fields = ("created_at", "last_mod")