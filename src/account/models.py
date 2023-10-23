from django.db import models
from django.contrib.auth.models import AbstractUser, UserManager
from django.utils.translation import gettext as _
from ckeditor.fields import RichTextField
from django.core.mail import send_mail, EmailMessage
from django.dispatch import receiver
from django.db.models.signals import post_save
from django.conf import settings
from django.template.loader import render_to_string
from django.utils.safestring import mark_safe


class User(AbstractUser):
    phone = models.CharField(_("Phone"), max_length=30, null=True, blank=True)

    class Meta:
        verbose_name = _("Пользователь")
        verbose_name_plural = _("Пользователи")

    objects = UserManager()


class SendMail(models.Model):
    to = models.EmailField(_("К"))
    subject = models.CharField(_("Subject"), max_length=255)
    body = RichTextField(_("body"))
    created_at = models.DateTimeField(_("Дата и время отправки"), auto_now_add=True, null=True, blank=True)

    class Meta:
        verbose_name = _("Письмо")
        verbose_name_plural = _("Написать письмо")

    def __str__(self) -> str:
        return str(self.to)


# Function to send the email
def send_email_on_creation(sender, instance, **kwargs):
    to_email = instance.to
    subject = instance.subject
    body = mark_safe(instance.body)
    
    message = render_to_string('index.html', {'subject': subject, 'body': body})
    
    email = EmailMessage(subject, message, settings.EMAIL_HOST_USER, [to_email])
    email.content_subtype = "html" 
    email.send()


# Signal to send email when a new SendMail object is created
@receiver(post_save, sender=SendMail)
def send_email_on_create(sender, instance, created, **kwargs):
    if created:
        send_email_on_creation(sender, instance, **kwargs)
