from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from .yasg import urlpatterns as doc_urlpatterns

urlpatterns = [
    path("api/admin/", admin.site.urls),
    path('api/chaining/', include('smart_selects.urls')),
    path("api/", include("src.tours.urls")),
    path("api/ckeditor/", include("ckeditor_uploader.urls")),
    path("api/", include("src.main.urls")),
    path("api/", include("src.car_rent.urls")),
    path("api/lead/", include("src.lead.urls")),
    path("__debug__/", include("debug_toolbar.urls")),
]

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

urlpatterns += doc_urlpatterns