#-*- coding: utf-8 -*-
from django.conf import settings
from django.db import models
from django.db.models import signals
from baceerp.modulos.geral.models import TipoMaterial, Material, Produto, Operador
import sys

class NotaFiscal(models.Model):
  class Meta:
    verbose_name = "Nota Fiscal"
    verbose_name_plural = "Notas Fiscais"
    
  numero = models.CharField(u"Número", max_length=100,blank=False,null=False, unique=True)
  valor_total = models.DecimalField(u"Valor Total", max_digits=8,decimal_places=2)
  
  def __unicode__(self):
    return self.numero
  # def save(self, *args, **kwargs):
  #   nota_material = MaterialNotaFiscal.objects.filter(nota_fiscal=self.numero)
  #   print nota_material         
       
class MaterialNotaFiscal(models.Model):
  STATUS_MATERIAL = (
     ("0","Em aberto"),
     ("1", u"Para produção"),
     ("2", "Finalizado"),
   )  
  nota_fiscal = models.ForeignKey(NotaFiscal)
  material = models.ForeignKey(Material,blank=True,null=True)
  volume = models.PositiveSmallIntegerField(u"Volume", default=0,blank=False,null=False)
  data_entrada = models.DateField(u"Data de Entrada", max_length=100,blank=False,null=False)
  peso = models.DecimalField(u"Peso", max_length=100,max_digits=8,decimal_places=2,blank=False,null=False)
  valor = models.DecimalField(u"Valor", max_digits=8,decimal_places=2,blank=False,null=False)
  status = models.CharField("Status",max_length=100, choices=STATUS_MATERIAL,blank=True,null=True)

  class Meta:
    verbose_name = "Material"
    verbose_name_plural = "Materiais"   

  def __unicode__(self):
    return self.material.descricao

  def save(self, *args, **kwargs):
    self.status = self.STATUS_MATERIAL[0][0]
    super(MaterialNotaFiscal, self).save(*args, **kwargs)           
                                              

class OrdemFabricacao(models.Model): 
  ALFABETO = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
  
  class Meta:
    verbose_name= u"Ordem de Fabricação"
    verbose_name_plural= u"Ordens de Fabricação"

  numero_of = models.CharField(u"Ordem de fabricação",max_length=100,blank=False,null=False)
  nota_fiscal = models.ForeignKey(NotaFiscal)
  material = models.ForeignKey(MaterialNotaFiscal,blank=False,null=False)
  tipo_material = models.ForeignKey(TipoMaterial,blank=True,null=True)
  produto = models.ForeignKey(Produto,blank=True,null=True)
  operador = models.ForeignKey(Operador,blank=True,null=True)
  data_inicial = models.DateField(u"Data Inicial", max_length=100,blank=True,null=True)
  data_final = models.DateField(u"Data Final", max_length=100,blank=True,null=True)
  peso_bruto = models.DecimalField(u"Peso Bruto", max_length=100,max_digits=8,decimal_places=2,blank=True,null=True)
  peso_liquido = models.DecimalField(u"Peso Líquido", max_length=100,max_digits=8,decimal_places=2,blank=True,null=True)
  previsao = models.DecimalField(u"Previsão", max_length=100,max_digits=8,decimal_places=2,blank=True,null=True)
  perda = models.DecimalField(u"Perda", max_length=100,max_digits=8,decimal_places=2,blank=True,null=True)

  def __unicode__(self):
    return self.numero_of
