from django.db import models
from django.utils.translation import gettext_lazy as _
from .choices import last_12_months_choices
from ckeditor.fields import RichTextField
from django.urls import reverse


class Category(models.Model):
    name = models.CharField(_('Название'), max_length=200)
    img = models.ImageField(_('Изображение'), upload_to='cat_images', null=True, blank=True)

    # slug = models.SlugField(_('Слоган'), default='', null=False)

    class Meta:
        verbose_name = _('Категория')
        verbose_name_plural = _('Категории')

    def __str__(self):
        return self.name


class Program(models.Model):
    day = models.IntegerField(_('День'))
    start = models.CharField(_('Начало (место)'), max_length=50, null=True, blank=True)
    finish = models.CharField(_('Конец (место)'), max_length=50, null=True, blank=True)
    description = RichTextField(_('Описание'), null=True, blank=True)
    meals = models.CharField(_('Питание'), max_length=100, null=True, blank=True)
    tour = models.ForeignKey('Tour', verbose_name=_('Тур'), on_delete=models.CASCADE, null=True, blank=True,
                             related_name='programs')

    class Meta:
        verbose_name = _('Программа')
        verbose_name_plural = _('Программы')

    def __str__(self):
        return self.tour.title or 'Tour'

    def save(self, *args, **kwargs):
        self.description = self.description.replace('\r\n\r\n', '')
        super(Program, self).save(*args, **kwargs)


class Prices(models.Model):
    tour = models.ForeignKey('Tour', verbose_name=_('Тур'), on_delete=models.CASCADE, null=True, blank=True,
                             related_name='prices')
    person = models.IntegerField(_('За людей (количество)'), null=True, blank=True)
    economy = models.FloatField(_('Цена эконом'), null=True, blank=True)
    comfort = models.FloatField(_('Цена комфорт'), null=True, blank=True)
    lux = models.FloatField(_('Цена люкс'), null=True, blank=True)

    def __str__(self):
        return str(self.person) or 'Price'

    class Meta:
        verbose_name = 'Цена'
        verbose_name_plural = 'Цены'


class Accommodation(models.Model):
    tour = models.ForeignKey('Tour', verbose_name=_('Тур'), on_delete=models.SET_NULL, null=True, blank=True,
                             related_name='accommodations')
    location = models.CharField(_('Расположение'), max_length=100, null=True, blank=True)
    # economy_url = models.URLField(_('Economy hotel site'), null=True, blank=True)
    economy_hotel = models.CharField(_('Название отеля (эконом-класс)'), max_length=100, null=True, blank=True)
    # comfort_url = models.URLField(_('Сайт комфортного отеля'), null=True, blank=True)
    comfort_hotel = models.CharField(_('Название отеля (комфорт)'), max_length=100, null=True, blank=True)

    def __str__(self):
        return self.location or 'Location'

    class Meta:
        verbose_name = 'Проживание'
        verbose_name_plural = 'Проживание'


class Images(models.Model):
    tour = models.ForeignKey('Tour', verbose_name=_('Тур'), on_delete=models.SET_NULL, null=True, blank=True,
                             related_name='images')
    location = models.CharField(_('Место изображение'), max_length=100, null=True, blank=True)
    img = models.ImageField(_('Изображение'), upload_to='tour_images', null=True, blank=True)

    def __str__(self):
        return self.location or 'Image'


class TourReviews(models.Model):
    STATUS_CHOICES = (
        (1, 'Одобрено'),
        (0, 'Отказано'),
        (2, 'Не проверено'),
    )

    RATING_CHOICES = (
        (5, _('Отлично')),
        (4, _('Хорошо')),
        (3, _('Неплохо')),
        (2, _('Плохо')),
        (1, _('Ужасно')),
    )

    status = models.IntegerField(_('Статус'), choices=STATUS_CHOICES, default=2)
    tour = models.ForeignKey('Tour', verbose_name=_('Тур'), on_delete=models.CASCADE,
                             null=True, blank=True, related_name='reviews')
    rating = models.IntegerField(_('Рейтинг'), choices=RATING_CHOICES, null=True, blank=True)
    date = models.CharField(_('Посетил'), max_length=50, choices=last_12_months_choices(), null=True, blank=True)
    name = models.CharField(_('Имя'), max_length=100, null=True, blank=True)
    email = models.EmailField(_('Электронная почта'), max_length=100, null=True, blank=True)
    comment = models.TextField(_('Комментарий'), null=True, blank=True)
    date_created = models.DateField(_('Дата отзыва'), auto_now_add=True, null=True, blank=True)

    def __str__(self):
        return self.name or self.email or 'Review'

    class Meta:
        verbose_name = _('Отзыв')
        verbose_name_plural = _('Отзывы')


class Tour(models.Model):
    TYPE_CHOICES = (
        (1, 'Гарантированный'),
        (2, 'По заявке'),
        (3, 'Предложить свой тур'),
    )

    title = models.CharField(_('Заголовок'), max_length=200, null=True, blank=True)
    cat = models.ForeignKey(Category, verbose_name=_('Категория'), on_delete=models.CASCADE, null=True, blank=True,
                            related_name='tours')
    type = models.IntegerField(_('Тип тура'), choices=TYPE_CHOICES, null=True, blank=True)
    duration = models.IntegerField(_('Продолжительность (день)'), null=True, blank=True)
    description = RichTextField(_('Описание'), null=True, blank=True)
    included = RichTextField(_('Включено'), null=True, blank=True)
    excluded = RichTextField(_('Не включено'), null=True, blank=True)
    top = models.BooleanField(_('Отображения в главной странице'), default=False)
    start_day = models.DateField(_('Дата началы'), null=True, blank=True)
    views = models.IntegerField(_('Просмотры'), default=0)

    class Meta:
        verbose_name = _('Тур')
        verbose_name_plural = _('Туры')

    def __str__(self):
        return self.title or 'Tour title'

    def get_absolute_url(self):
        return reverse('tour-detail', args=[str(self.pk)])

    def save(self, *args, **kwargs):
        self.included = self.included.replace('\r\n\r\n', '')
        self.excluded = self.excluded.replace('\r\n\r\n', '')
        self.description = self.description.replace('\r\n\r\n', '')
        super(Tour, self).save(*args, **kwargs)


class Slider(models.Model):
    title = models.CharField(_('Заголовок'), max_length=255, null=True, blank=True)
    subtitle = models.CharField(_('Подзаголовок'), max_length=255, null=True, blank=True)
    img = models.ImageField(_('Изображение'), upload_to='slider', null=True, blank=True)
    tour = models.OneToOneField(Tour, verbose_name=_('Тур на который ссылается слайдер'), on_delete=models.CASCADE,
                                null=True, blank=True)
    is_active = models.BooleanField(_('Активность'), default=False)

    class Meta:
        verbose_name = 'Слайдер'
        verbose_name_plural = 'Слайдеры'
