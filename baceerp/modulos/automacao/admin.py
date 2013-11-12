#-*- coding: utf-8 -*-
import os

from django import forms
from django.conf import settings
from django.contrib import admin
from django.contrib.admin.helpers import Fieldset
from django.contrib.admin.options import ModelAdmin, TabularInline, \
  csrf_protect_m
from django.db import transaction
from django.forms import ModelForm, widgets
from django.http import HttpResponseRedirect
from django.shortcuts import render

from forms import *
from models import *
from django.http.response import HttpResponse


class InlineNotaFiscal(TabularInline):
  model = MaterialNotaFiscal  
  fields = ('nota_fiscal','material','volume','data_entrada','peso','valor',)   
  extra = 1
  
class NotaFiscalAdmin(admin.ModelAdmin):
  class Media:
    js = ('admin/js/automacao.notafiscal.js',)

  inlines = [InlineNotaFiscal]
  readonly_fields = ('peso_total_inicial',)   
  search_fields = ('numero',)    
  exclude = ('ativo',)

class MaterialNotaFiscalAdmin(admin.ModelAdmin):
  exclude = ('ativo','status','ordem_fabricacao',)
  

class EtiquetaInline(admin.StackedInline):
  exclude = ('ativo','numero_etiqueta_remessa',)
  model = EtiquetaRemessa
  extra = 1
  fk_name = "ordem_fabricacao"      

class EtiquetaRetnornoNipleInline(admin.StackedInline):
  model = EtiquetaRetornoNiple
  extra = 1 
  
class EtiquetaRetornoRaioInline(admin.StackedInline):
  model = EtiquetaRetornoRaio
  extra = 1   

class EtiquetaAdmin(admin.ModelAdmin):
  class Media:
    js = ('admin/js/automacao.etiqueta.js',)

  fieldsets = [
        ('Remessa', {'fields': ['tipo_etiqueta','numero_etiqueta_remessa','produto','ordem_fabricacao','peso','previsao','data_inicio','peso_1g']}),
    ]
  list_filter = ('numero_etiqueta_remessa','tipo_etiqueta') 
  list_display = ('numero_etiqueta_remessa','ordem_fabricacao','tipo_etiqueta')
  search_fields = ('numero_etiqueta_remessa','ordem_fabricacao__numero_of','tipo_etiqueta')
  
  
  
  #Ao clicar no botão de adicionar ele zera o inline
  @csrf_protect_m
  @transaction.commit_on_success
  def add_view(self, request, form_url='', extra_context=None):
    self.inlines = []
    self.readonly_fields = ()
    return admin.ModelAdmin.add_view(self, request, form_url=form_url, extra_context=extra_context)
  
  #Método para sobrescrever a chamada de edição
  #Ao chamar ele adiciona o EtiquetaRetorno de acordo com o tipo de EtiquetaRemessa  
  @csrf_protect_m
  @transaction.commit_on_success
  def change_view(self, request, object_id, form_url='', extra_context=None):
    etf = EtiquetaRemessa.objects.get(pk=object_id)
    self.readonly_fields = ('tipo_etiqueta','numero_etiqueta_remessa','produto','ordem_fabricacao','data_inicio',)
    if etf.tipo_etiqueta == "0":
      self.inlines = [EtiquetaRetornoRaioInline]
    elif etf.tipo_etiqueta == "1":  
      self.inlines = [EtiquetaRetnornoNipleInline]
    elif etf.tipo_etiqueta == "":
      self.inlines = []  
    return admin.ModelAdmin.change_view(self, request, object_id, form_url=form_url, extra_context=extra_context)
      
      
  
class OrdemFabricacaoAdmin(admin.ModelAdmin):
  class Media:
    js = ('admin/js/automacao.ordemfabricacao.js',)

  readonly_fields = ('material','numero_of',)
  search_fields = ('numero_of',)
  list_display = ('numero_of','material',)
  change_list_template = "admin/modulos/automacao/ordemfabricacao/list_ordem_fabricacao.html"    
  list_per_page = 25   
  inlines = [EtiquetaInline]
  exclude = ('ativo',)  
  

#admin.site.register(MaterialNotaFiscal,MaterialNotaFiscalAdmin)
admin.site.register(NotaFiscal, NotaFiscalAdmin)
admin.site.register(OrdemFabricacao, OrdemFabricacaoAdmin)
admin.site.register(EtiquetaRemessa, EtiquetaAdmin)
