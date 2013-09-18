# -*- coding: utf-8 -*-
from django import forms
from django.forms import ModelForm, widgets
from models import OrdemFabricacao,NotaFiscal,TipoMaterial,Produto,Operador,MaterialNotaFiscal,Material

class AddOrdemFabricacao(forms.Form):
	nota_fiscal = forms.CharField(u"Ordem de ")