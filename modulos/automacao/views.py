# -*- coding: utf-8 -*-
from django import forms
from django.forms import ModelForm, widgets
from django.template import RequestContext
from django.http import HttpResponseRedirect
from django.shortcuts import render_to_response
from models import OrdemFabricacao,NotaFiscal,TipoMaterial,Produto,Operador,MaterialNotaFiscal,Material

class AddOrdemFabricacao(forms.Form):
	nota_fiscal = forms.CharField(u"Ordem de ")

def add_ordem_fabricacao(self):         

	return render_to_response('admin/modulos/automacao/add_ordem_fabricacao.html')