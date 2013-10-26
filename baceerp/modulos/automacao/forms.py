#-*- coding: utf-8 -*-
from django import forms
from django.contrib.admin import widgets
from django.db.models import Q
from django.forms import ModelForm
from models import OrdemFabricacao

class FormOrdemFabricacao(forms.Form):
  nota_fiscal_numero = forms.CharField(required=True)
  data_inicial = forms.DateField(u"Data de Início")
  class Meta:
    model = OrdemFabricacao