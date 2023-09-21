from django.db.models import TextChoices
from django.utils.translation import gettext_lazy as _
from datetime import date
import locale


def last_12_months_choices():
    russian_month_names = {
        1: 'Январь',
        2: 'Февраль',
        3: 'Март',
        4: 'Апрель',
        5: 'Май',
        6: 'Июнь',
        7: 'Июль',
        8: 'Август',
        9: 'Сентябрь',
        10: 'Октябрь',
        11: 'Ноябрь',
        12: 'Декабрь',
    }

    today = date.today()
    months = []
    for i in range(0, 12):
        month = today.month - i
        year = today.year
        if month <= 0:
            month += 12
            year -= 1
        month_name = russian_month_names[month]
        display_name = f"{month_name} {year}"
        months.append((display_name, display_name))

    return months



class TourTypesChoices(TextChoices):
    a = 1, _('Гарантированный')
    b = 2, _('По заявке')
    c = 3, _('Предложить свой тур')
