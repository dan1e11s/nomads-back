from django.contrib import admin
from tabbed_admin import TabbedModelAdmin
from django.utils.translation import gettext_lazy as _
from django.utils.safestring import mark_safe
from .models import *

admin.site.site_title = _('Nomad Life')
admin.site.site_header = _('Nomad Life Kyrgyzstan')


class ProgramInline(admin.StackedInline):
    model = Program
    extra = 0


class PricesInline(admin.TabularInline):
    model = Prices
    extra = 0


class AccommodationInline(admin.StackedInline):
    model = Accommodation
    extra = 0


class ImagesInline(admin.TabularInline):
    model = Images
    extra = 0


@admin.register(Tour)
class TourAdmin(TabbedModelAdmin):
    model = Tour
    list_display = ('title', 'type', 'cat', 'top',)
    list_editable = ('top',)
    list_filter = ('top', 'type', 'cat', 'duration',)
    search_fields = ('title', 'type', 'duration',)
    search_help_text = 'Поиск по всем данным'
    readonly_fields = ('views',)

    tab_overview = (
        ('ОСНОВНЫЕ', {
            'fields': (
                'type', 'top', 'title', 'start_day', 'cat', 'duration', 'description', 'included', 'excluded', 'views')
        }),
    )

    tab_programs = (ProgramInline,)
    tab_prices = (PricesInline,)
    tab_accommodation = (AccommodationInline,)
    tab_images = (ImagesInline,)

    tabs = [
        ('Основные', tab_overview,),
        ('Программы', tab_programs,),
        ('Цены', tab_prices,),
        ('Картинки', tab_images,),
        ('Проживание', tab_accommodation,),
    ]

    # def get_absolute_url(self, obj):
    #     return '<a href="{0}" target="_blank">{0}</a>'.format(obj.get_absolute_url())
    #
    # get_absolute_url.allow_tags = True
    # get_absolute_url.short_description = 'Absolute URL'


@admin.register(TourReviews)
class TourReviewsAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'date', 'rating', 'status', 'date_created',)
    list_display_links = ('name', 'email',)
    list_editable = ('status',)
    search_fields = ('name', 'email', 'date', 'comment',)
    list_filter = ('status', 'rating',)

    def has_add_permission(self, request):
        print(request.user)
        return False


@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'get_html_img',)
    list_display_links = ('name',)

    def get_html_img(self, object):
        if object.img:
            return mark_safe(f"<img src='{object.img.url}' width='70'>")

    get_html_img.short_description = 'Фотография'


@admin.register(Slider)
class SliderAdmin(admin.ModelAdmin):
    list_display = ('title', 'is_active', 'get_html_img',)
    list_display_links = ('title',)
    list_editable = ('is_active',)

    def get_html_img(self, object):
        if object.img:
            return mark_safe(f"<img src='{object.img.url}' height='60'>")

    get_html_img.short_description = 'Изображение'
