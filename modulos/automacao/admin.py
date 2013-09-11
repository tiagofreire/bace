#-*- coding: utf-8 -*-
from django.contrib import admin
from django.conf import settings 
from django.contrib.admin.options import ModelAdmin,TabularInline
from models import *
import os

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

class InlineNotaFiscal(TabularInline):
	model = MaterialNotaFiscal     
	extra = 1
	
class NotaFiscalAdmin(ModelAdmin):
	inlines = [InlineNotaFiscal]   
	search_fields = ('numero',)    
	change_form_template = "admin/modulos/automacao/change_form.html"

class MaterialNotaFiscalAdmin(ModelAdmin):
	exclude = ('status',)    
	
class OrdemFabricacaoAdmin(ModelAdmin):
	change_form_template = "admin/modulos/automacao/add_ordem_fabricacao.html"
	
admin.site.register(TipoMaterial,TipoMaterialAdmin)
admin.site.register(Material,MaterialAdmin)
admin.site.register(Setor,SetorAdmin)
admin.site.register(Operador,OperadorAdmin)
admin.site.register(GrupoProduto)
admin.site.register(Produto,ProdutoAdmin)
admin.site.register(MaterialNotaFiscal,MaterialNotaFiscalAdmin)
admin.site.register(NotaFiscal, NotaFiscalAdmin)
admin.site.register(OrdemFabricacao, OrdemFabricacaoAdmin)