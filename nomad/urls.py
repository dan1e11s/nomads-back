from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from .yasg import urlpatterns as doc_urlpatterns

urlpatterns = [
    path('admin/', admin.site.urls),
    path('tour/', include('src.tours.urls')),
    path('ckeditor/', include('ckeditor_uploader.urls')),
    path('client/', include('src.clients.urls')),
    path('car/', include('src.car_rent.urls')),
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns = [
        path('__debug__/', include('debug_toolbar.urls'))
    ] + urlpatterns

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += staticfiles_urlpatterns()
urlpatterns += doc_urlpatterns
