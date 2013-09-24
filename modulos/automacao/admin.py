#-*- coding: utf-8 -*-
from django.contrib import admin
from django.conf import settings 
from django.contrib.admin.options import ModelAdmin,TabularInline
from models import *
from forms import *
from django import forms
from django.forms import ModelForm, widgets
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
	fields = ('nota_fiscal','material','volume','data_entrada','peso','valor',)   
	extra = 1
	
class NotaFiscalAdmin(admin.ModelAdmin):
	class Media:
		js = ('admin/js/automacao.notafiscal.js',)
		
	inlines = [InlineNotaFiscal]   
	search_fields = ('numero',)    

class MaterialNotaFiscalAdmin(admin.ModelAdmin):
	exclude = ('status','ordem_fabricacao',)


class AddOrdemFabricacao(forms.Form):
	nome = forms.CharField("Nome do cara")

class OrdemFabricacaoForm(ModelForm):  
	exclude = ('nota_fiscal',)
	class Meta:
		model = OrdemFabricacao
		fields = ['numero_of','tipo_material','produto','nota_fiscal']
		
class OrdemFabricacaoAdmin(admin.ModelAdmin):
	#form = OrdemFabricacaoForm

	change_form_template = "admin/modulos/automacao/add_ordem_fabricacao.html"

admin.site.register(TipoMaterial,TipoMaterialAdmin)
admin.site.register(Material,MaterialAdmin)
admin.site.register(Setor,SetorAdmin)
admin.site.register(Operador,OperadorAdmin)
admin.site.register(GrupoProduto)
admin.site.register(Produto,ProdutoAdmin)
#admin.site.register(MaterialNotaFiscal,MaterialNotaFiscalAdmin)
admin.site.register(NotaFiscal, NotaFiscalAdmin)
admin.site.register(OrdemFabricacao, OrdemFabricacaoAdmin)