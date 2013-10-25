#-*- coding: utf-8 -*-
from django.contrib import admin
from django.conf import settings 
from django.contrib.admin.options import ModelAdmin,TabularInline
from django import forms
from django.forms import ModelForm, widgets
from models import *
from forms import *         
import os

	
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
	class Media:
		pass#js = ('admin/js/automacao.ordemfabricacao.js',)

	#change_form_template = "admin/modulos/automacao/add_ordem_fabricacao.html"
	change_list_template = "admin/modulos/automacao/list_ordem_fabricacao.html"

#admin.site.register(MaterialNotaFiscal,MaterialNotaFiscalAdmin)
admin.site.register(NotaFiscal, NotaFiscalAdmin)
admin.site.register(OrdemFabricacao, OrdemFabricacaoAdmin)