#-*- coding: utf-8 -*-
from django.contrib import admin
from models import *

class MaterialAdmin(admin.ModelAdmin):
  list_display=('descricao',)
  list_per_page = 25
  search_fields = ['descricao']

class NotaFiscalAdmin(admin.ModelAdmin):
  list_display=('numero','peso')
  list_per_page = 25
  search_fields = ['numero',]
	                            
class OrdemFabricacaoAdmin(admin.ModelAdmin):
	list_display=('nota_fiscal','operador','produto','peso_bruto','bitola','previsao')
	list_per_page = 25
	search_fields = ['nota_fiscal','operador','produto','peso_bruto','bitola','previsao']
admin.site.register(Material,MaterialAdmin)
admin.site.register(NotaFiscal,NotaFiscalAdmin)                                       
admin.site.register(OrdemFabricacao,OrdemFabricacaoAdmin)                                       
