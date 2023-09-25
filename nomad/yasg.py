from django.urls import path
from rest_framework import permissions
from drf_yasg.views import get_schema_view
from drf_yasg import openapi

schema_view = get_schema_view(
    openapi.Info(
        title='Nomad Life',
        default_version='v1',
        description='API for Nomad Lide',
        license=openapi.License(name='BSD License'),
    ),
    public=True,
    permission_classes=(permissions.AllowAny,),
    url='https://nomadslife.travel/api/'
)

urlpatterns = [
    path('docs.json', schema_view.without_ui(cache_timeout=0), name='schema-json'),
    path('api/swagger', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),
    path('redoc/', schema_view.with_ui('redoc', cache_timeout=0), name='schema-redoc')
]
