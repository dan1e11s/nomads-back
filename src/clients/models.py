from django.db import models
from django.utils.translation import gettext_lazy as _
from src.tours.models import Tour
from ckeditor.fields import RichTextField


class Information(models.Model):
    LANGUAGE_CHOICES = [
        ('en', 'Аглийский'),
        ('ru', 'Руссукий'),
        ('ky', 'Кыргызский'),
    ]

    CURRENCY_CHOICES = [
        ('USD', 'US Dollar'),
        ('EUR', 'Euro'),
        ('KGZ', 'Kyrgyzstan Som'),
    ]

    request = models.OneToOneField('Requests', on_delete=models.CASCADE, null=True, blank=True)
    birth_date = models.DateField(_('Дата рождения'), null=True, blank=True)
    nationality = models.CharField(_('Национальность'), max_length=50, null=True, blank=True)
    address = models.CharField(_('Адрес'), max_length=100, null=True, blank=True)
    from_where = models.CharField(_('Прибытие'), max_length=100, null=True, blank=True)
    language = models.CharField(_('Предпочтительный язык'), max_length=5, choices=LANGUAGE_CHOICES,
                                blank=True, null=True)
    currency = models.CharField(_('Предпочтительная валюта'), max_length=5, choices=CURRENCY_CHOICES,
                                blank=True, null=True)
    passport = models.CharField(_('Паспорт'), max_length=100, null=True, blank=True)
    passport_img = models.ImageField(_('Фото паспорта'), upload_to='clients', null=True, blank=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return 'Информация'

    class Meta:
        verbose_name = 'Информация о клиенте'


class Requests(models.Model):
    STATUS_CHOICES = (
        (1, _('Обслужено')),
        (0, _('Не обслужено')),
    )
    
    tour = models.ForeignKey(Tour, verbose_name=_('Желаемый тур'), on_delete=models.SET_NULL, null=True, blank=True)
    status = models.IntegerField(_('Статус'), choices=STATUS_CHOICES, default=0)
    first_name = models.CharField(_('Имя'), max_length=100)
    last_name = models.CharField(_('Фамилия'), max_length=100)
    email = models.EmailField(_('Адрес электронной почты'), max_length=100)
    phone = models.CharField(_('Телефон'), max_length=100)
    size = models.IntegerField(_('Размер группы'))
    budget = models.CharField(_('Бюджет на человека'), max_length=100, null=True, blank=True)
    message = models.TextField(_('Сообщение'))
    newsletter = models.BooleanField(_('Рассылка'), default=False)
    contact = models.BooleanField(_('Связаться'), default=False)
    created_at = models.DateTimeField(_('Дата'), auto_now_add=True)

    def __str__(self):
        return f"{self.first_name} {self.last_name}" or self.email or self.phone

    class Meta:
        verbose_name = 'Заявка'
        verbose_name_plural = 'Заявки'


class Feedback(models.Model):
    STATUS_CHOICES = (
        (1, _('Обслужено')),
        (0, _('Не обслужено')),
    )

    name = models.CharField(_('Имя'), max_length=100, null=True, blank=True)
    email = models.EmailField(_('Email'), max_length=100, null=True, blank=True)
    phone = models.CharField(_('Телефон'), max_length=100, null=True, blank=True)
    comment = models.TextField(_('Комментарий'), null=True, blank=True)
    status = models.IntegerField(_('Статус'), choices=STATUS_CHOICES, default=0)
    created_at = models.DateTimeField(_('Дата заявки'), auto_now_add=True)

    class Meta:
        verbose_name = 'Обратная связь'
        verbose_name_plural = 'Запросы на обратную связь'

    def __str__(self):
        return self.name


class SiteReviews(models.Model):
    STATUS_CHOICES = (
        (1, 'Одобрено'),
        (0, 'Отказано'),
        (2, 'Не проверено'),
    )
    MARK_CHOICES = (
        (1, 1),
        (2, 2),
        (3, 3),
        (4, 4),
        (5, 5),
    )

    firstname = models.CharField(_('Имя'), max_length=255, null=True, blank=True)
    lastname = models.CharField(_('Фамилия'), max_length=255, null=True, blank=True)
    mark = models.IntegerField(_('Оценка'), choices=MARK_CHOICES, default=5)
    text = models.TextField(_('Отзыв'), null=True, blank=True)
    photo = models.ImageField(_('Фото'), default='default_profile_photo.png', upload_to='avatars')
    created_at = models.DateTimeField(_('Создан в'), auto_now_add=True)
    status = models.IntegerField(_('Статус'), choices=STATUS_CHOICES, default=2)

    def __str__(self):
        return ''

    class Meta:
        verbose_name = 'Впечатления клиента'
        verbose_name_plural = 'Впечатления наших клиентов'

    
class FAQ(models.Model):
    name = models.CharField(_('Категория FAQ'), max_length=255, null=True, blank=True)
    
    class Meta:
        verbose_name = _('Вопрос и ответ')
        verbose_name_plural = _('Часто задаваемые вопросы')
        
    def __str__(self):
        return self.name



class Answer(models.Model):
    faq = models.ForeignKey(FAQ, on_delete=models.CASCADE, null=True, blank=True, related_name='faq')
    question = models.CharField(_('Вопрос'), max_length=255, null=True, blank=True)
    answer = RichTextField(_('Ответ'), null=True, blank=True)
    
    class Meta:
        verbose_name = _('Вопрос и ответет')
        verbose_name_plural = _('Вопросы и ответы')
        
    def __str__(self):
        return self.question    