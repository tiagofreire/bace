#-*- coding: utf-8 -*-
from django import forms
from django.contrib.admin import widgets
from django.db.models import Q
from django.forms import ModelForm
from models import OrdemFabricacao, EtiquetaRemessa
from django.contrib.admin.widgets import AdminDateWidget 

class FormOrdemFabricacao(forms.Form):
  nota_fiscal_numero = forms.CharField(required=True)
  data_inicial = forms.DateField(widget=AdminDateWidget)
  class Meta:
    model = OrdemFabricacao

class FormEtiqueta(forms.Form):
  ordem_fabricacao = forms.TextInput()
  class Meta:
    model = EtiquetaRemessa