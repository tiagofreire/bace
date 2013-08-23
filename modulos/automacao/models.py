#-*- coding: utf-8 -*-
from django.conf import settings
from django.contrib.auth.models import User
from django.db import models
from django.db.models import signals
  
class Setor(models.Model):
  descricao = models.CharField(u"Descrição",max_length=200, blank=False, null=False)
  class Meta:
    verbose_name = "Setor"
    verbose_name_plural  = "Setores"
  def __str__(self):
    return "%s" % self.descricao
  
  def __unicode__(self):
      return "%s" % self.descricao 

class Operador(models.Model):
  nome = models.CharField("Nome",max_length=200, blank=False, null=False)
  setor = models.ForeignKey(Setor, related_name = "setor_descricao", blank=False, null=False)
    
  class Meta:
    verbose_name = "Operador"
    verbose_name_plural  = "Operadores"
  def __str__(self):
    return "%s" % self.nome
  
  def __unicode__(self):
      return "%s" % self.nome  

class TipoMaterial(models.Model):
  descricao = models.CharField(u"Descrição",max_length=200, blank=False, null=False)

  class Meta:
    verbose_name = "Tipo de Material"
    verbose_name_plural  = "Tipo de Materiais"

  def __str__(self):
    return "%s" % self.descricao

  def __unicode__(self):
      return "%s" % self.descricao 


class Material(models.Model):
  descricao = models.CharField(u"Descrição",max_length=200, blank=False, null=False)
  
  class Meta:
    verbose_name = "Material"
    verbose_name_plural  = "Materiais"
    
  def __str__(self):
    return "%s" % self.descricao
  
  def __unicode__(self):
      return "%s" % self.descricao 

class Produto(models.Model):
  descricao = models.CharField(u"Descrição",max_length=200, blank=False, null=False)

  class Meta:
    verbose_name = "Produto"
    verbose_name_plural  = "Produtos"

  def __str__(self):
    return "%s" % self.descricao

  def __unicode__(self):
      return "%s" % self.descricao  

class NotaFiscal(models.Model):
  numero = models.CharField(u"Número",max_length = 20, blank = False, null = False)  
  material = models.ManyToManyField(Material, blank=False,related_name="material_descricao",null=False,help_text = u"Selecione o material ou lista de materiais.")
  peso = models.CharField(u"Peso",max_length = 10, blank = False, null = False)

  class Meta:
    verbose_name = "Nota Fiscal"
    verbose_name_plural  = "Notas Fiscais"

  def __str__(self):
    return "%s" % self.numero

  def __unicode__(self):
      return "%s" % self.numero 
                                             
class OrdemFabricacao(models.Model):
  nota_fiscal = models.ForeignKey(NotaFiscal, blank = False, null = False, related_name = "ordemfabricacao_notafiscal")
  data = models.DateField(u"Data", null = True, blank = True)
  tipo_material = models.ForeignKey(TipoMaterial, blank=False, null=False)         
  produto = models.ForeignKey(Produto, blank=False, null=False)         
  operador = models.ForeignKey(Operador, blank=True, null=True)
  peso_bruto = models.CharField("Peso Bruto",max_length=10,blank=True, null=True)
  previsao = models.CharField(u"Previsão",max_length=10,blank=True, null=True)
  
  class Meta:
    verbose_name = u"Ordem de Fabricação"
    verbose_name_plural  = u"Ordens de Fabricação"


  def __str__(self):
    return "%s" % self.nota_fiscal
  def __unicode__(self):
    return "%s" % self.nota_fiscal     