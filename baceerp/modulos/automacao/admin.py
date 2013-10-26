#-*- coding: utf-8 -*-
from django.contrib import admin
from django.conf import settings 
from django.contrib.admin.options import ModelAdmin,TabularInline
from django import forms
from django.forms import ModelForm, widgets
from models import *
from forms import *         
import os
from django.contrib.admin.helpers import Fieldset

  
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
    fields = ['numero_of','produto','nota_fiscal']

class EtiquetaInline(TabularInline):
  model = EtiquetaRemessa
  extra = 1       

class EtiquetaAdmin(admin.ModelAdmin):
  list_display = ('numero_etiqueta_remessa','ordem_fabricacao','tipo_etiqueta')
  search_fields = ('numero_etiqueta_remessa','ordem_fabricacao__numero_of','tipo_etiqueta')
  class Media:
    js = ('admin/js/automacao.etiqueta.js',)

  fieldsets = [
        ('Remessa', {'fields': ['tipo_etiqueta','numero_etiqueta_remessa','produto','ordem_fabricacao','peso','previsao','data_inicio','peso_1g']}),
    ]

class OrdemFabricacaoAdmin(admin.ModelAdmin):
  search_fields = ('numero_of',)
  list_display = ('numero_of','material',)
  change_list_template = "admin/modulos/automacao/list_ordem_fabricacao.html"    
  list_per_page = 25   
  inlines = [EtiquetaInline]   
  #change_form_template = "admin/modulos/automacao/add_ordem_fabricacao.html"
  #change_list_template = "admin/modulos/automacao/list_ordem_fabricacao.html"

#admin.site.register(MaterialNotaFiscal,MaterialNotaFiscalAdmin)
admin.site.register(NotaFiscal, NotaFiscalAdmin)
admin.site.register(OrdemFabricacao, OrdemFabricacaoAdmin)
admin.site.register(EtiquetaRemessa, EtiquetaAdmin)
