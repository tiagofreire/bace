#-*- coding: utf-8 -*-
from django.conf import settings
from django.db import models
from django.db.models import signals
from django.db import models
from modulos.estoque.models import *
from modulos.geral.models import TipoMaterial,Produto,Operador

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

class OrdemFabricacao(models.Model):    
  class Meta:
    verbose_name= u"Ordem de Fabricação"
    verbose_name_plural= u"Ordens de Fabricação"

  numero_of = models.CharField(u"Ordem de fabricação",max_length=100,blank=False,null=False)
  nota_fiscal = models.ForeignKey(NotaFiscal)
  # materia_nota_fiscal = models.ManyToManyField(MaterialNotaFiscal)
  tipo_material = models.ForeignKey(TipoMaterial)
  produto = models.ForeignKey(Produto)
  operador = models.ForeignKey(Operador)
  data_inicial = models.DateField(u"Data Inicial", max_length=100,blank=False,null=False)
  data_final = models.DateField(u"Data Final", max_length=100,blank=False,null=False)
  peso_bruto = models.DecimalField(u"Peso Bruto", max_length=100,max_digits=8,decimal_places=2,blank=False,null=False)
  peso_liquido = models.DecimalField(u"Peso Líquido", max_length=100,max_digits=8,decimal_places=2,blank=False,null=False)
  previsao = models.DecimalField(u"Previsão", max_length=100,max_digits=8,decimal_places=2,blank=False,null=False)
  perda = models.DecimalField(u"Perda", max_length=100,max_digits=8,decimal_places=2,blank=False,null=False)

  def __unicode__(self):
    return self.numero_of

  # def save(self, *args, **kwargs):
  # 
  #   for mnf in self.materia_nota_fiscal.all():
  #     mnf.status = "1"    
  # 
  #   super(OrdemFabricacao, self).save(*args, **kwargs)
