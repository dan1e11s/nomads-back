from django.contrib import admin
from tabbed_admin.admin import TabbedModelAdmin
from django.utils.safestring import mark_safe
from .models import *


class InformationInline(admin.StackedInline):
    model = Information
    extra = 0


@admin.register(Requests)
class RequestsAdmin(TabbedModelAdmin):
    model = Requests
    list_display = ('get_full_name', 'budget', 'contact', 'newsletter', 'created_at')
    search_fields = ('first_name', 'last_name', 'email', 'phone', 'message',)
    list_filter = ('contact', 'newsletter',)

    tab_overview = (
        ('ЗАПРОС', {
            'fields': (
                'contact', 'newsletter', 'tour', 'first_name', 'last_name', 'email', 'phone', 'size', 'budget',
                'message',
            )
        }),
    )

    tab_information = (InformationInline,)

    tabs = [
        ('Запрос', tab_overview,),
        ('Информация о клиенте', tab_information,)
    ]

    def has_add_permission(self, request):
        return False

    def get_full_name(self, object):
        if not object.first_name:
            return mark_safe(object.last_name)
        elif not object.last_name:
            return mark_safe(object.first_name)
        else:
            return mark_safe(f"{object.first_name} {object.last_name}")

    get_full_name.short_description = 'Full name'


@admin.register(Feedback)
class FeedbackAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'status', 'created_at')
    search_fields = ('name', 'email', 'comment')
    list_filter = ('status',)
    list_editable = ('status',)
    readonly_fields = ('name', 'email', 'phone', 'comment',)

    def has_add_permission(self, request):
        return False


@admin.register(SiteReviews)
class SiteReviewsAdmin(admin.ModelAdmin):
    list_display = ('full_name', 'mark', 'status', 'created_at',)
    list_display_links = ('full_name',)
    list_editable = ('status',)
    readonly_fields = ('full_name', 'mark', 'text', 'photo', 'created_at',)

    def has_add_permission(self, request):
        return False
