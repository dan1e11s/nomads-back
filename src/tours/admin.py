from django.contrib import admin
from django.utils.translation import gettext_lazy as _
from django.utils.safestring import mark_safe
from .models import *

admin.site.site_title = _('Nomad Life')
admin.site.site_header = _('Nomad Life Kyrgyzstan')


class PricesInline(admin.StackedInline):
    model = Prices
    extra = 0


class RouteInline(admin.StackedInline):
    model = Route
    extra = 0


class ImagesInline(admin.TabularInline):
    model = Images
    extra = 0


@admin.register(Tour)
class TourAdmin(admin.ModelAdmin):
    model = Tour
    list_display = ('id', 'title', 'type', 'cat', 'top',)
    list_display_links = ('id', 'title',)
    list_editable = ('top',)
    list_filter = ('top', 'type', 'cat', 'duration',)
    search_fields = ('title', 'type', 'duration',)
    search_help_text = 'Поиск по всем данным'
    readonly_fields = ('views',)
    inlines = (PricesInline, RouteInline, ImagesInline)


@admin.register(TourReviews)
class TourReviewsAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'date', 'rating', 'status', 'date_created',)
    list_display_links = ('name', 'email',)
    list_editable = ('status',)
    search_fields = ('name', 'email', 'date', 'comment', 'tour')
    list_filter = ('status', 'rating', 'tour',)

    def has_add_permission(self, request):
        return False


@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'region',)
    list_display_links = ('name',)

    # def get_html_img(self, object):
    #     if object.img:
    #         return mark_safe(f"<img src='{object.img.url}' width='70'>")

    # get_html_img.short_description = 'Фотография'
    

@admin.register(Region)
class RegionAdmin(admin.ModelAdmin):
    list_display = ('id', 'name',)
    list_display_links = list_display


@admin.register(Slider)
class SliderAdmin(admin.ModelAdmin):
    list_display = ('title', 'is_active', 'get_html_img',)
    list_display_links = ('title',)
    list_editable = ('is_active',)

    def get_html_img(self, object):
        if object.img:
            return mark_safe(f"<img src='{object.img.url}' height='60'>")

    get_html_img.short_description = 'Изображение'


@admin.register(CreateOwnTour)
class CreateOwnTourAdmin(admin.ModelAdmin):
    list_display = ('name_tour', 'method', 'date_start',)
    list_display_links = ('name_tour',)
    search_fields = ('name_tour', 'method', 'date_start', 'comment',)
    list_filter = ('name_tour',)


@admin.register(TourRequest)
class TourRequestAdmin(admin.ModelAdmin):
    model = TourRequest
    list_display = ('first_name', 'last_name', 'status', 'phone', 'email', 'created_at',)
    list_display_links = ('email', 'first_name', 'last_name',)
    list_editable = ('status',)
    list_filter = ('status',)






    
    
