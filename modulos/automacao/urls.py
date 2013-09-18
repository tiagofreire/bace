#-*- coding: utf-8 -*-
from django.conf.urls.defaults import *

urlpatterns = patterns("modulos.automacao.views",                       
		(r'add/pesquisa_nota_fiscal', 'pesquisa_nota_fiscal'),    
)