#-*- coding: utf-8 -*-
from django.conf.urls.defaults import *

urlpatterns = patterns("baceerp.modulos.automacao.views",     
		(r'ordemfabricacao/add/pesquisa_nota_fiscal', 'pesquisa_nota_fiscal'),    
		(r'ordemfabricacao/add/add_ordem_fabricacao', 'add_ordem_fabricacao'),    
		(r'add/gera_ordem_fabricacao', 'gera_ordem_fabricacao'),    
		(r'add/add_etiqueta', 'add_etiqueta'),    
)