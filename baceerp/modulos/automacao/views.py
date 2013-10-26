# -*- coding: utf-8 -*-
from django import forms
from django.forms import ModelForm, widgets
from django.template import *
from django.http import HttpResponseRedirect,HttpResponse,HttpResponse
from django.shortcuts import render_to_response, render
from django.utils import dateformat
from datetime import *              
from django.utils.html import format_html
from baceerp.modulos.automacao.models import OrdemFabricacao,MaterialNotaFiscal,NotaFiscal
from baceerp.modulos.geral.models import TipoMaterial,Produto,Operador,Material
from django.template import RequestContext     
from forms import FormOrdemFabricacao     
import StringIO

def pesquisa_nota_fiscal(request):        

  nf = NotaFiscal.objects.filter(numero=request.POST['nota_fiscal'])
  if nf.exists():
    mnf = MaterialNotaFiscal.objects.filter(nota_fiscal__numero=nf[0].numero)   
    html = "\
      <input type=\"hidden\" id=\"nota_fiscal_pk\" name=\"nota_fiscal_pk\" value=\""+str(nf[0].id)+"\" />\
      <div class=\"inline-group\" id=\"materialnotafiscal_set-group\">\
        <div class=\"tabular inline-related last-related\">\
        <fieldset class=\"module\"><h2>Materiais</h2>\
        <table id=\"list_material_nota_fical\" class=\"table table-striped table-bordered table-condensed\">\
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
      html += "<td>"+m.material.descricao+"</td>"
      html += "<td>"+str(m.volume)+"<input type=\"hidden\" value=\""+str(m.volume)+"\" name=\"material_nota_fiscal_volume_"+str(m.id)+"\" id=\"material_nota_fiscal_volume_"+str(m.id)+"\"/></td>"
      html += "<td>"+m.data_entrada.strftime("%d/%m/%Y")+"</td>"
      html += "<td>"+str(m.peso)+"</td><td>"+str(m.valor)+"</td>"
      html += "<td><input type=\"radio\" onchange=\"OrdemFabricacao.selecionaProdutoNotaFiscal(this,"+str(m.id)+")\" name=\"materia_nota_fiscal_id\" id=\"materia_nota_fiscal_"+str(m.id)+"\" value=\""+str(m.id)+"\"/></td>" if m.volume != 0 else "<td></td>"
      html += "</tr>"
    html += "</tbody>"
    html += "</table>\
    </fieldset>"
  else:
    html = u"<p class=\"errornote alert alert-error fade in\">Nenhuma nota fiscal cadastrada com este número</p>"
  return HttpResponse(html)             
  
  
def add_ordem_fabricacao(request):  
  form = FormOrdemFabricacao()
  return render(request, "admin/modulos/automacao/add_ordem_fabricacao.html", {
          'form': form,
      })
  
def gera_ordem_fabricacao(request):
  form = FormOrdemFabricacao(request.POST) 

  import sys           
  material_nota_fiscal = MaterialNotaFiscal.objects.get(id=request.POST["materia_nota_fiscal_id"])  
  nota_fiscal = NotaFiscal.objects.get(id=request.POST["nota_fiscal_pk"])

  for x in range(0,int(request.POST["material_nota_fiscal_volume_"+request.POST["materia_nota_fiscal_id"]])):
    of = OrdemFabricacao(
      nota_fiscal=NotaFiscal.objects.get(id=request.POST["nota_fiscal_pk"]),
      numero_of=str(nota_fiscal.numero)+str(material_nota_fiscal.material.codigo)+str(x),
      material=material_nota_fiscal
      )
    of.save()     
  material_nota_fiscal.volume=0
  material_nota_fiscal.save()
  return HttpResponseRedirect("/automacao/ordemfabricacao/")
