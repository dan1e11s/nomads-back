from django.contrib import admin
from django.http.request import HttpRequest
from django.utils.safestring import mark_safe
from .models import *
from django.contrib.auth.admin import UserAdmin


class InformationInline(admin.StackedInline):
    model = Information
    extra = 0


@admin.register(Requests)
class RequestsAdmin(admin.ModelAdmin):
    model = Requests
    list_display = ("get_full_name", "status", "contact", "newsletter", "created_at")
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

    def get_full_name(self, object):
        if not object.first_name:
            return mark_safe(object.last_name)
        elif not object.last_name:
            return mark_safe(object.first_name)
        else:
            return mark_safe(f"{object.first_name} {object.last_name}")

    get_full_name.short_description = "Full name"


# @admin.register(Feedback)
# class FeedbackAdmin(admin.ModelAdmin):
#     list_display = ('name', 'email', 'status', 'created_at')
#     search_fields = ('name', 'email', 'comment')
#     list_filter = ('status',)
#     list_editable = ('status',)
#     readonly_fields = ('name', 'email', 'phone', 'comment',)

#     def has_add_permission(self, request):
#         return False


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

        if existing_objects_count > 0:
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
    list_display = ("name",)
    list_display_links = ("name",)


class ArticleImagesInline(admin.StackedInline):
    model = ArticleImages
    extra = 0


@admin.register(Articles)
class ArticlesAdmin(admin.ModelAdmin):
    list_display = ("id", "title", "created_at", "views", "get_html_poster",)
    list_display_links = ("id", "title",)
    inlines = (ArticleImagesInline,)
    
    def get_html_poster(self, object):
        if object.poster:
            return mark_safe(f"<img src='{object.poster.url}' height='60'>")

    get_html_poster.short_description = 'Постер'
