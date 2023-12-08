from django.contrib import admin
from django.utils.translation import gettext_lazy as _

from .models import LeadTraveler, Travelers


class TravelersInline(admin.StackedInline):
    model = Travelers
    extra = 0


@admin.register(LeadTraveler)
class LeadTravelerAdmin(admin.ModelAdmin):
    fieldsets = (
        (
            _("Личная информация"),
            {
                "fields": (
                    "first_name",
                    "last_name",
                    "email",
                    "phone",
                    "nationality",
                    "dateofborn",
                    "gender",
                )
            },
        ),
        # (
        #     _("Адрес"),
        #     {
        #         "fields": (
        #             "address",
        #             "city",
        #         )
        #     },
        # ),
        # # (
        #     _("Информация о банковской карте"),
        #     {
        #         "fields": (
        #             "c_name",
        #             "c_number",
        #             "c_expiry_date",
        #             "c_country",
        #             "c_cvv",
        #         )
        #     },
        # ),
    )

    list_display = (
        "email",
        "phone",
        "first_name",
        "last_name",
    )
    search_fields = (
        "phone",
        "first_name",
        "last_name",
        "email",
    )
    inlines = (TravelersInline,)
