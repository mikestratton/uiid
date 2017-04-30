import django

from django.conf import settings
from django.conf.urls import url, include
from django.conf.urls.static import static
from django.contrib import admin

from core import views

admin.autodiscover()

urlpatterns = [
	url(r'^admin/', include(admin.site.urls)),
    url(r'^recommend/(?P<user_type>.+)/$', views.recommend),
	url(r'^$', views.index),
]

if settings.DEBUG:
 	urlpatterns += static( settings.MEDIA_URL, document_root=settings.MEDIA_ROOT )
