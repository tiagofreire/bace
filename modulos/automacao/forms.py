# -*- coding: utf-8 -*-
from django import forms
from django.forms import ModelForm, widgets
from models import OrdemFabricacao,NotaFiscal,TipoMaterial,Produto,Operador,MaterialNotaFiscal,Material

class OrdemFabricacaoForm(ModelForm):
	class Meta:
		model = OrdemFabricacao
		fields = ['numero_of','tipo_material','produto']