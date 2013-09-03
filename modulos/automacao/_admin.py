""""
#-*- coding: utf-8 -*-
from django.contrib import admin
from models import *

class MaterialAdmin(admin.ModelAdmin):
  list_display=('descricao',)
  list_per_page = 25
  search_fields = ['descricao']

class SetorAdmin(admin.ModelAdmin):
  list_display=('descricao',)
  list_per_page = 25
  search_fields = ['descricao']

class OperadorAdmin(admin.ModelAdmin):
  list_display=('nome',)
  list_per_page = 25
  search_fields = ['descricao']

class TipoMaterialAdmin(admin.ModelAdmin):
  list_display=('descricao',)
  list_per_page = 25
  search_fields = ['descricao']

class ProdutoAdmin(admin.ModelAdmin):
  list_display=('descricao',)
  list_per_page = 25
  search_fields = ['descricao']

class NotaFiscalAdmin(admin.ModelAdmin):
  list_display=('numero','peso')
  list_per_page = 25
  search_fields = ['numero',]
                              
class OrdemFabricacaoAdmin(admin.ModelAdmin):
  list_per_page = 25

admin.site.register(Material,MaterialAdmin)  
admin.site.register(Setor,SetorAdmin)
admin.site.register(Operador,OperadorAdmin)  
# admin.site.register(TipoMaterial,TipoMaterialAdmin)
admin.site.register(Produto,ProdutoAdmin)
admin.site.register(NotaFiscal,NotaFiscalAdmin)                                       
admin.site.register(OrdemFabricacao,OrdemFabricacaoAdmin)
"""