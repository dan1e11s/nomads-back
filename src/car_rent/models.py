from datetime import timedelta
from django.db import models
from django.utils.translation import gettext_lazy as _
from ckeditor.fields import RichTextField
from django_resized import ResizedImageField


class CarType(models.Model):
    LANG_CHOICES = (
        ("ru", "Русский"),
        ("en", "Английский"),
        ("de", "Немецкий"),
        ("fr", "Французкий"),
        ("es", "Испанский"),
        ("jp", "Японский"),
    )
    
    lang = models.CharField(_("Язык"), choices=LANG_CHOICES, default="en")
    name = models.CharField(_("Название"), max_length=255)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = "Тип авто"
        verbose_name_plural = "Типы автомобилей"


class Brand(models.Model):
    name = models.CharField(_("Название"), max_length=255)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = "Марка авто"
        verbose_name_plural = "Марки автомобилей"


class Images(models.Model):
    car = models.ForeignKey("Car", verbose_name=_("Авто"), on_delete=models.CASCADE, related_name="car_images")
    img = ResizedImageField(_("Изображение авто"), upload_to="car_images", null=True, blank=True, force_format="WEBP", quality=50)
    alt = models.CharField(null=True, blank=True)
    img_title = models.CharField(null=True, blank=True)

    def __str__(self):
        return self.car.model

    class Meta:
        verbose_name = _("Изображение")
        verbose_name_plural = _("Изображения")


class Prices(models.Model):
    car = models.ForeignKey("Car", verbose_name=_("Авто"), on_delete=models.CASCADE, related_name="car_prices")
    days = models.CharField(_("Длительность аренды"), max_length=100, null=True, blank=True)
    price = models.FloatField(_("Стоимость аренды"), null=True, blank=True)

    def __str__(self):
        return self.car.model

    class Meta:
        verbose_name = _("Цена аренды")
        verbose_name_plural = _("Цены")


class Car(models.Model):
    LANG_CHOICES = (
        ("ru", "Русский"),
        ("en", "Английский"),
        ("de", "Немецкий"),
        ("fr", "Французкий"),
        ("es", "Испанский"),
        ("jp", "Японский"),
    )
    
    lang = models.CharField(_("Язык"), choices=LANG_CHOICES, default="en")
    RATING_CHOICES = (
        (1, 1),
        (2, 2),
        (3, 3),
        (4, 4),
        (5, 5),
    )

    STATUS_CHOICES = (
        (1, _("Доступно")),
        (0, _("Не доступно")),
    )
    
    CONDITIONER_CHOICES = (
        (True, _("Есть")),
        (False, _("Нет"))
    )
    
    ECONOMY_CHOICES = (
        (True, _("Есть")),
        (False, _("Нет"))
    )
    
    
    REAR_VIEW_CHOICES = (
        (True, _("Есть")),
        (False, _("Нет"))
    )

    type = models.ForeignKey(CarType, verbose_name=_("Тип авто"), on_delete=models.CASCADE, related_name="cars")
    brand = models.ForeignKey(Brand, verbose_name=_("Марка автомобиля"), on_delete=models.CASCADE)
    model = models.CharField(_("Модель"), max_length=255, null=True, blank=True)
    seats = models.IntegerField(_("Кол-во пассажиров"), null=True, blank=True)
    year = models.IntegerField(_("Год"), null=True, blank=True)
    rating = models.IntegerField(_("Рейтинг"), choices=RATING_CHOICES, default=5)
    status = models.IntegerField(_("Статус"), choices=STATUS_CHOICES, default=1)
    proccess = RichTextField(_("Процесс аренды"), null=True, blank=True)
    features = RichTextField(_("Преимущества и особенности"), null=True, blank=True)
    conditioner = models.BooleanField(_("Кондиционер"), choices=CONDITIONER_CHOICES, default=False)
    economy = models.BooleanField(_("Экономичность"), choices=ECONOMY_CHOICES, default=True)
    rear_view = models.BooleanField(_("Камера заднего вида"), choices=REAR_VIEW_CHOICES, default=False)
    bluetooth = models.BooleanField(_("Bluetooth"), choices=CONDITIONER_CHOICES, default=True)
    

    def __str__(self):
        return self.model
    
    def unavailable_dates(self):
        unavailable_dates = []
        rental_requests = CarRentalRequest.objects.filter(car=self, status=2)
        
        for request in rental_requests:
            date_range = [request.datefrom + timedelta(days=x) for x in range((request.dateto - request.datefrom).days + 1)]
            unavailable_dates.extend(date_range)
        
        return unavailable_dates

    class Meta:
        verbose_name = _("Авто")
        verbose_name_plural = _("Авто")


class CarRentalRequest(models.Model):
    STATUS_CHOICES = (
        (1, _("Новая заявка")),
        (0, _("Отклонено")),
        (2, _("Куплено")),
        (3, _("Завершено"))
    )

    # Контактные данные
    first_name = models.CharField(_("Имя"), max_length=100)
    last_name = models.CharField(_("Фамилия"), max_length=100)
    email = models.EmailField(_("Электронная почта "), max_length=100)
    phone = models.CharField(_("Номер телефона"), max_length=100)
    status = models.IntegerField(_("Статус"), choices=STATUS_CHOICES, default=1)

    # Информация о путешествии
    car = models.ForeignKey(Car, on_delete=models.CASCADE, verbose_name="Авто")
    comment = models.TextField(_("Комментарии и дополнительная информация"), null=True, blank=True)
    datefrom = models.DateField(_("Дата начала"))
    dateto = models.DateField(_("Дата окончания"))

    def __str__(self):
        return f"{self.first_name} {self.last_name}"

    class Meta:
        verbose_name = _("Заявка на авто")
        verbose_name_plural = _("Заявки на авто")
