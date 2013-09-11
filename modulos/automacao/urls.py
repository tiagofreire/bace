#-*- coding: utf-8 -*-
from django.conf.urls.defaults import *

urlpatterns = patterns("modulos.automacao.views",                       
    (r'admin/automacao/ordemfabricacao/add/', 'add_ordem_fabricacao'),    
)