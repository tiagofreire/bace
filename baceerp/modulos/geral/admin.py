#-*- coding: utf-8 -*-
from django.contrib import admin
from django.conf import settings 
from django.contrib.admin.options import ModelAdmin,TabularInline
from baceerp.modulos.geral.models import TipoMaterial,Produto,Operador, Material, Setor, GrupoProduto
from django import forms
from django.forms import ModelForm, widgets
import os

class MaterialAdmin(admin.ModelAdmin):    
  exclude = ('codigo',)
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
  exclude = ('codigo',)
  list_display=('descricao',)
  list_per_page = 25
  search_fields = ['descricao']

admin.site.register(TipoMaterial,TipoMaterialAdmin)
admin.site.register(Material,MaterialAdmin)
admin.site.register(Setor,SetorAdmin)
admin.site.register(Operador,OperadorAdmin)
admin.site.register(GrupoProduto)
admin.site.register(Produto,ProdutoAdmin)
