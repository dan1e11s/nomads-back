from django.db import models
from django.utils.translation import gettext_lazy as _


class LeadTraveler(models.Model):
    GENDER_CHOICES = (("Мужчина", "Мужчина"), ("Женщина", "Женщина"))

    # Personal Info
    first_name = models.CharField(_("Имя"), max_length=255)
    last_name = models.CharField(_("Фамилия"), max_length=255)
    email = models.EmailField(_("E-mail"), max_length=255)
    phone = models.CharField(_("Телефон"), max_length=255)
    dateofborn = models.DateField(_("Дата рождения"))
    gender = models.CharField(_("Гендер"), max_length=10, choices=GENDER_CHOICES)
    nationality = models.CharField(_("Страна"), max_length=255)

    # Address
    address = models.CharField(_("Адрес"), max_length=255)
    city = models.CharField(_("Город"), max_length=255)

    # Bank Card Info
    c_name = models.CharField(_("Имя владельца карты"), max_length=255)
    c_number = models.CharField(_("Номер карты"), max_length=12)
    c_expiry_data = models.DateField(_("Дата истечения срока"))
    c_cvv = models.IntegerField(_("CVV"))
    c_country = models.CharField(_("Страна плательщика"), max_length=255)

    def __str__(self) -> str:
        return f"{self.first_name} {self.last_name}"

    class Meta:
        verbose_name = _("Лид")
        verbose_name_plural = _("Лиды")


class Travelers(models.Model):
    GENDER_CHOICES = (("Мужчина", "Мужчина"), ("Женщина", "Женщина"))

    lead = models.ForeignKey(LeadTraveler, on_delete=models.CASCADE, related_name='travelers')
    # Personal Info
    first_name = models.CharField(_("Имя"), max_length=255)
    last_name = models.CharField(_("Фамилия"), max_length=255)
    dateofborn = models.DateField(_("Дата рождения"))
    gender = models.CharField(_("Гендер"), max_length=10, choices=GENDER_CHOICES)
    nationality = models.CharField(_("Страна"), max_length=255)

    def __str__(self) -> str:
        return f"{self.first_name} {self.last_name}"

    class Meta:
        verbose_name = _("Путешественник")
        verbose_name_plural = _("Путешественники")

    # @property
    # def total_price(self):
    #     return sum([
    #         o.meal.price * o.quantity
    #         for o in self.ordered_meals.select_related('meal').all()
    #     ])