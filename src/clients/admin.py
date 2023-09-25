from django.contrib import admin
from django.utils.safestring import mark_safe
from .models import *


class InformationInline(admin.StackedInline):
    model = Information
    extra = 0


@admin.register(Requests)
class RequestsAdmin(admin.ModelAdmin):
    model = Requests
    list_display = ('get_full_name', 'status', 'contact', 'newsletter', 'created_at')
    search_fields = ('first_name', 'last_name', 'email', 'phone', 'message',)
    list_filter = ('contact', 'newsletter',)
    list_editable = ('status',)
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

    get_full_name.short_description = 'Full name'


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
    list_display = ('firstname', 'lastname', 'mark', 'status', 'created_at',)
    list_display_links = ('firstname',)
    list_editable = ('status',)
    readonly_fields = ('firstname', 'lastname', 'mark', 'text', 'photo', 'created_at',)

    def has_add_permission(self, request):
        return False


class FAQInline(admin.StackedInline):
    model = Answer
    extra = 0
    
    
@admin.register(FAQ)
class FAQAdmin(admin.ModelAdmin):
    list_display = ('name',)
    list_display_links = ('name',)
    inlines = (FAQInline,)