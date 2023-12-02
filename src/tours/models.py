from django.db import models
from django.utils.translation import gettext_lazy as _
from .choices import last_12_months_choices
from ckeditor.fields import RichTextField
from django.urls import reverse
from django.utils.text import slugify
from unidecode import unidecode
from django_resized import ResizedImageField


class Category(models.Model):
    LANG_CHOICES = (
        ("ru", "Русский"),
        ("en", "Английский"),
        ("de", "Немецкий"),
        ("fr", "Французкий"),
        ("es", "Испанский"),
        ("jp", "Японский"),
    )
    
    lang = models.CharField(_("Язык"), choices=LANG_CHOICES, default="en", max_length=2)
    name = models.CharField(_("Название"), max_length=200)
    slug = models.SlugField(_("Slug"), max_length=1000)
    img = ResizedImageField(_("Изображение"), upload_to="cat_images", null=True, blank=True, force_format="WEBP", quality=50)
    alt = models.CharField(null=True, blank=True)
    img_title = models.CharField(null=True, blank=True)
    created_at = models.DateTimeField(_("Дата создания"), auto_now_add=True)
    last_mod = models.DateTimeField(_("Последняя модификация"), auto_now=True)

    class Meta:
        verbose_name = _("Категория")
        verbose_name_plural = _("Категории")

    def __str__(self):
        return self.name
    
    def save(self, *args, **kwargs):
        # self.slug = f"{slugify(unidecode(self.name))}-{self.lang}"
        self.img_title = self.name
        return super().save(*args, **kwargs)
    
    def test(self):
        self.slug = f"{slugify(unidecode(self.name))}-{self.lang}"


class Prices(models.Model):
    STATUS_CHOICES = (
        (3, "Завершено"),
        (2, "Распроданно"),
        (1, "Доступно")
    )
    
    CURRENCY_CHOICES = (
        ("USD", "USD"),
        ("KGS", "KGS"),
        ("RUB", "RUB"),
        ("KZT", "KZT")
    )
    
    tour = models.ForeignKey("Tour", verbose_name=_("Тур"), on_delete=models.CASCADE, null=True, blank=True, related_name="prices")
    price = models.IntegerField(_("Цена"), null=True, blank=True)
    currency = models.CharField(_("Валюта"), max_length=5, choices=CURRENCY_CHOICES, default="USD")
    status = models.IntegerField(_("Статус"), choices=STATUS_CHOICES, default=1)
    deadline = models.DateField(_("Крайний срок"), null=True, blank=True)
    start = models.DateField(_("Начало тура"), null=True, blank=True)
    end = models.DateField(_("Конец тура"), null=True)

    def __str__(self):
        return str(self.price) or "Price"

    class Meta:
        verbose_name = "Цена"
        verbose_name_plural = "Цены"


class Route(models.Model):
    tour = models.ForeignKey("Tour", verbose_name=_("Тур"), on_delete=models.SET_NULL, null=True, blank=True, related_name="routes")
    day = models.IntegerField(_("День"), null=True, blank=True)
    start = models.CharField(_("Начало (место)"), max_length=50, null=True, blank=True)
    finish = models.CharField(_("Конец (место)"), max_length=50, null=True, blank=True)
    description = RichTextField(_("Программа"), null=True, blank=True)
    hotel = models.CharField(_("Гостиница"), max_length=100, null=True, blank=True)
    meals = models.CharField(_("Питание"), max_length=100, null=True, blank=True)

    def __str__(self):
        return "Route"

    class Meta:
        verbose_name = "Маршрут"
        verbose_name_plural = "Маршруты"


class Images(models.Model):
    tour = models.ForeignKey("Tour", verbose_name=_("Тур"), on_delete=models.SET_NULL, null=True, blank=True, related_name="images")
    location = models.CharField(_("Место изображение"), max_length=100, null=True, blank=True)
    img = ResizedImageField(_("Изображение"), upload_to="tour_images", null=True, blank=True, force_format="WEBP", quality=50)
    alt = models.CharField(null=True, blank=True)
    img_title = models.CharField(null=True, blank=True)

    def __str__(self):
        return self.location or "Image"
    
    # def save(self, *args, **kwargs):
    #     if self.tour:
    #         self.alt = f"Picture - {self.tour.title}"
    #         # self.img_title = self.tour.title
    #         return super().save(*args, **kwargs)
    
    class Meta:
        verbose_name = _("Изображение")
        verbose_name_plural = _("Изображения")


class TourReviews(models.Model):
    STATUS_CHOICES = (
        (1, "Одобрено"),
        (0, "Отказано"),
        (2, "Не проверено"),
    )

    status = models.IntegerField(_("Статус"), choices=STATUS_CHOICES, default=2)
    tour = models.ForeignKey("Tour", verbose_name=_("Тур"), on_delete=models.CASCADE,
                             null=True, blank=True, related_name="reviews")
    rating = models.DecimalField(_("Рейтинг"), null=True, blank=True, max_digits=5, decimal_places=1)
    date = models.CharField(_("Посетил"), max_length=50, choices=last_12_months_choices(), null=True, blank=True)
    name = models.CharField(_("Имя"), max_length=100, null=True, blank=True)
    email = models.EmailField(_("Электронная почта"), max_length=100, null=True, blank=True)
    comment = models.TextField(_("Комментарий"), null=True, blank=True)
    date_created = models.DateField(_("Дата отзыва"), auto_now_add=True, null=True, blank=True)

    def __str__(self):
        return self.name or self.email or "Review"

    class Meta:
        verbose_name = _("Отзыв")
        verbose_name_plural = _("Отзывы")
    

class TourRequest(models.Model):
    STATUS_CHOICES = (
        (1, _("Обслужено")),
        (0, _("Не обслужено")),
    )
    
    tour = models.ForeignKey("Tour", verbose_name=_("Тур"), on_delete=models.CASCADE, null=True, blank=True,
                                            related_name="TourRequest")
    status = models.IntegerField(_("Статус"), choices=STATUS_CHOICES, default=0)
    first_name = models.CharField(_("Имя"), max_length=100, null=True, blank=True)
    last_name = models.CharField(_("Фамилия"), max_length=100, null=True, blank=True)
    email = models.EmailField(_("Адрес электронной почты"), max_length=100, null=True, blank=True)
    phone = models.CharField(_("Телефон"), max_length=100, null=True, blank=True)
    comment = models.TextField(_("Комментарий"))
    price = models.ForeignKey("Prices", on_delete=models.SET_NULL, null=True, blank=True)
    created_at = models.DateTimeField(_("Дата запроса"), auto_now_add=True, null=True, blank=True)

    
    def __str__(self):
        return f"{self.first_name} {self.last_name}"

    class Meta:
        verbose_name = _("Запрос на тур")
        verbose_name_plural = _("Запросы")    
            
            
class Tour(models.Model):
    LANG_CHOICES = (
        ("ru", "Русский"),
        ("en", "Английский"),
        ("de", "Немецкий"),
        ("fr", "Французкий"),
        ("es", "Испанский"),
        ("jp", "Японский"),
    )
    TYPE_CHOICES = (
        (1, "Гарантированный"),
        (2, "По заявке"),
        (3, "Предложить свой тур"),
    )

    lang = models.CharField(_("Язык"), choices=LANG_CHOICES, default="en")
    title = models.CharField(_("Заголовок"), max_length=200, null=True, blank=True)
    slug = models.SlugField(_("Slug"), max_length=1000)
    cat = models.ForeignKey(Category, verbose_name=_("Категория"), on_delete=models.CASCADE, null=True, blank=True,
                            related_name="tours")
    type = models.IntegerField(_("Тип тура"), choices=TYPE_CHOICES, null=True, blank=True)
    duration = models.IntegerField(_("Продолжительность (день)"), null=True, blank=True)
    price_for = models.IntegerField(_("Цены указаны за"), null=True, blank=True)
    description = RichTextField(_("Полное описание"), null=True, blank=True)
    short_desc = RichTextField(_("Краткое описание"), blank=True, default="")
    included = RichTextField(_("Включено"), null=True, blank=True)
    excluded = RichTextField(_("Не включено"), null=True, blank=True)
    top = models.BooleanField(_("Отображения в главной странице"), default=False)
    views = models.IntegerField(_("Просмотры"), default=0)
    youtube_link = models.URLField(_("Ссылка на ютуб"), null=True, blank=True)
    created_at = models.DateTimeField(_("Дата создания"), auto_now_add=True)
    last_mod = models.DateTimeField(_("Последняя модификация"), auto_now=True)

    class Meta:
        verbose_name = _("Тур")
        verbose_name_plural = _("Туры")

    def __str__(self):
        return self.title or "Tour title"

    def get_absolute_url(self):
        return reverse("tour-detail", args=[str(self.pk)])

    def save(self, *args, **kwargs):
        self.included = self.included.replace("\r\n\r\n", "")
        self.excluded = self.excluded.replace("\r\n\r\n", "")
        self.description = self.description.replace("\r\n\r\n", "")
        # self.slug = f"{slugify(unidecode(self.title))}-{self.lang}"
        return super().save(*args, **kwargs)


class Slider(models.Model):
    LANG_CHOICES = (
        ("ru", "Русский"),
        ("en", "Английский"),
        ("de", "Немецкий"),
        ("fr", "Французкий"),
        ("es", "Испанский"),
        ("jp", "Японский"),
    )
    
    lang = models.CharField(_("Язык"), choices=LANG_CHOICES, default="en")
    title = models.CharField(_("Заголовок"), max_length=255, null=True, blank=True)
    subtitle = models.CharField(_("Подзаголовок"), max_length=255, null=True, blank=True)
    img = ResizedImageField(_("Изображение"), upload_to="slider", null=True, blank=True, force_format="WEBP", quality=50)
    alt = models.CharField(null=True, blank=True)
    img_title = models.CharField(null=True, blank=True)
    link = models.URLField(_("Ссылка"), null=True, blank=True)
    is_active = models.BooleanField(_("Активность"), default=False)

    class Meta:
        verbose_name = "Слайдер"
        verbose_name_plural = "Слайдеры"
