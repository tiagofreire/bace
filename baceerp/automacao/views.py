# -*- coding: utf-8 -*-
from django import forms
from django.forms import ModelForm, widgets
from django.template import *
from django.http import HttpResponseRedirect,HttpResponse,HttpResponse
from django.shortcuts import render_to_response, render
from django.utils import dateformat
from datetime import *              
from django.utils.html import format_html
from modulos.automacao.models import OrdemFabricacao,MaterialNotaFiscal,NotaFiscal
from modulos.geral.models import TipoMaterial,Produto,Operador,Material
          

def pesquisa_nota_fiscal(request):       
	nf = NotaFiscal.objects.filter(numero=request.POST['nota_fiscal'])
	if nf.exists():
		mnf = MaterialNotaFiscal.objects.filter(nota_fiscal__numero=nf[0].numero)
		html = "\
			<input type=\"hidden\" id=\"nota_fiscal_pk\" value=\""+str(nf[0].id)+"\" />\
			<div class=\"inline-group\" id=\"materialnotafiscal_set-group\">\
		    <div class=\"tabular inline-related last-related\">\
				<fieldset class=\"module\"><h2>Materiais</h2>\
				<table class=\"table table-striped table-bordered table-condensed\">\
		<thead><tr>\
		<th>Material</th>\
		<th>Volume</th>\
		<th>Data de Entrada</th>\
		<th>Peso</th>\
		<th>Valor</th>\
		<th></th>\
		</tr>\
		</thead>"
		html += "<tbody>"
		for m in mnf:
			html += "<tr>"
			html += "\
						<td>"+m.material.descricao+"</td>\
						<td>"+m.volume+"</td>\
						<td>"+m.data_entrada.strftime("%d/%m/%Y")+"</td>\
						<td>"+str(m.peso)+"</td><td>"+str(m.valor)+"</td>\
						<td><input type=\"checkbox\" onchange=\"OrdemFabricacao.selecionaProdutoNotaFiscal(this,"+str(m.id)+")\" name=\"materia_nota_fiscal_id\" id=\"materia_nota_fiscal_"+str(m.id)+"\" value=\""+str(m.id)+"\"/></td>"
			html += "</tr>"
		html += "</tbody>"
		html += "</table>\
		</fieldset>"
	else:
		html = u"<p class=\"errornote alert alert-error fade in\">Nenhuma nota fiscal cadastrada com este número</p>"
	return HttpResponse(html)             
	