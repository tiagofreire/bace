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
	
admin.site.register(Material,MaterialAdmin)
admin.site.register(NotaFiscal,NotaFiscalAdmin)