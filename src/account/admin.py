from typing import Any
from django.contrib import admin
from django.contrib.auth.admin import UserAdmin, Group
from django.http.request import HttpRequest
from django.utils.translation import gettext_lazy as _
from .models import User, SendMail

admin.site.unregister(Group)


@admin.register(User)
class CustomUserAdmin(UserAdmin):
    fieldsets = (
        (None, {"fields": ("username", "password",)}),
        (_("Personal info"), {"fields": ("first_name", "last_name", "email", "phone")}),
        (_("Important dates"), {"fields": ("last_login", "date_joined")}),
    )
    add_fieldsets = (
        (
            None,
            {
                "classes": ("wide",),
                "fields": ("username", "password1", "password2",),
            },
        ),
    )
    list_display = ("username", "email", "first_name", "last_name",)
    list_filter = ("is_staff", "is_superuser", "is_active", "groups",)
    search_fields = ("username", "first_name", "last_name", "email",)
    ordering = ("username",)


@admin.register(SendMail)
class SendMailAdmin(admin.ModelAdmin):
    list_display = ("id", "to")
    list_display = ("id", "to")
    