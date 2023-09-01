from django.contrib import admin
from django.utils.translation import gettext_lazy as _
from .models import *


class PricesInline(admin.TabularInline):
    model = Prices
    extra = 0


class ImagesIncline(admin.TabularInline):
    model = Images
    extra = 0


@admin.register(Car)
class CarAdmin(admin.ModelAdmin):
    model = Car
    list_display = ('model', 'type', 'status', 'seats', 'year',)
    list_display_links = ('model',)
    list_editable = ('status',)
    list_filter = ('status', 'seats', 'type', 'brand',)
    search_fields = ('model', 'year', 'seats', 'brand',)
    inlines = (ImagesIncline, PricesInline,)


@admin.register(CarType)
class CarTypeAdmin(admin.ModelAdmin):
    list_display = ('name',)
    list_display_links = ('name',)
    search_fields = ('name',)


@admin.register(Brand)
class BrandAdmin(admin.ModelAdmin):
    list_display = ('name',)
    list_display_links = list_display
    search_fields = ('name',)


@admin.register(CarRentalRequest)
class CarRentalRequestAdmin(admin.ModelAdmin):
    model = CarRentalRequest
    list_display = ('name', 'email', 'phone', 'status',)
    list_display_links = ('name',)
    list_editable = ('status',)
    list_filter = ('status',)

    fieldsets = (
        (_("Контактные данные"), {"fields": (
            'status', 'type_auto', 'brand', 'seats', 'name', 'email', 'phone',)}),

        (_("Информация о путешествии"), {
         "fields": ('date_start', 'date_end', 'comment')}),
    )
