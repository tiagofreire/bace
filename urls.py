from django.conf.urls.defaults import patterns, include, url
from django.conf import settings 
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()
#123
urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'bace.views.home', name='home'),
    # url(r'^bace/', include('bace.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    (r'^', include(admin.site.urls)),   
     (r'^automacao/ordemfabricacao/',include('modulos.automacao.urls')),
    (r'^static/(.*)', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}), 
    #(r'^site_media/(.*)', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}), 
)