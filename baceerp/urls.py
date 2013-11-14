from django.conf.urls import patterns, include, url
from django.conf import settings 
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'baceerp..views.home', name='home'),
    # url(r'^baceerp./', include('baceerp..foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    (r'^', include(admin.site.urls)),   
    (r'^automacao/',include('baceerp.modulos.automacao.urls')),
    (r'^static/(.*)', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}), 
    #(r'^site_media/(.*)', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}), 
)
