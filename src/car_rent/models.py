from django.db import models
from django.utils.translation import gettext_lazy as _


class CarType(models.Model):
    name = models.CharField(_('Название'), max_length=255)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Тип авто'
        verbose_name_plural = 'Типы автомобилей'


class Brand(models.Model):
    name = models.CharField(_('Название'), max_length=255)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Марка авто'
        verbose_name_plural = 'Марки автомобилей'


class Images(models.Model):
    car = models.ForeignKey('Car', verbose_name=_('Авто'), on_delete=models.CASCADE, related_name='car_images')
    img = models.ImageField(_('Изображение авто'), upload_to='car_images', null=True, blank=True)

    def __str__(self):
        return self.car.model

    class Meta:
        verbose_name = _('Изображение')
        verbose_name_plural = _('Изображения')


class Prices(models.Model):
    car = models.ForeignKey('Car', verbose_name=_('Авто'), on_delete=models.CASCADE, related_name='car_prices')
    days = models.CharField(_('Длительность аренды'), max_length=100, null=True, blank=True)
    price = models.FloatField(_('Стоимость аренды'), null=True, blank=True)

    def __str__(self):
        return self.car.model

    class Meta:
        verbose_name = _('Цена аренды')
        verbose_name_plural = _('Цены')


class Car(models.Model):
    RATING_CHOICES = (
        (1, 1),
        (2, 2),
        (3, 3),
        (4, 4),
        (5, 5),
    )

    STATUS_CHOICES = (
        # (0, _('Вне службы')),
        (1, _('Доступно')),
        (0, _('Не доступно')),
        # (3, _('В ремонте')),
    )

    type = models.ForeignKey(CarType, verbose_name=_('Тип авто'), on_delete=models.CASCADE)
    brand = models.ForeignKey(Brand, verbose_name=_('Марка автомобиля'), on_delete=models.CASCADE)
    model = models.CharField(_('Модель'), max_length=255, null=True, blank=True)
    seats = models.IntegerField(_('Кол-во пассажиров'), null=True, blank=True)
    year = models.IntegerField(_('Год'), null=True, blank=True)
    rating = models.IntegerField(_('Рейтинг'), choices=RATING_CHOICES, default=5)
    status = models.IntegerField(_('Статус'), choices=STATUS_CHOICES, default=1)

    def __str__(self):
        return self.model

    class Meta:
        verbose_name = _('Авто')
        verbose_name_plural = _('Авто')


class CarRentalRequest(models.Model):
    STATUS_CHOICES = (
        (1, _('Обслужено')),
        (0, _('Не обслужено')),
    )

    # Контактные данные
    name = models.CharField(_('Имя'), max_length=100)
    type_auto = models.ForeignKey(CarType, verbose_name=_('Тип авто'), on_delete=models.CASCADE)
    brand = models.ForeignKey(Brand, verbose_name=_('Марка автомобиля'), on_delete=models.CASCADE)
    seats = models.IntegerField(_('Кол-во пассажиров'))
    email = models.EmailField(_('Электронная почта '), max_length=100)
    phone = models.CharField(_('Номер телефона'), max_length=100)
    status = models.IntegerField(_('Статус'), choices=STATUS_CHOICES, default=0)

    # Информация о путешествии
    date_start = models.DateField(_('Дата начала'), null=True, blank=True)
    date_end = models.DateField(_('Дата окончания'), null=True, blank=True)
    comment = models.TextField(_('Комментарии и дополнительная информация'), null=True, blank=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = _('Заявка на аренду автомобиля')
        verbose_name_plural = _('Заявки на аренду автомобиля')
