#-*- coding: utf-8 -*-
from django.conf.urls.defaults import *

urlpatterns = patterns("baceerp.modulos.automacao.views",                       
		(r'add/pesquisa_nota_fiscal', 'pesquisa_nota_fiscal'),    
)