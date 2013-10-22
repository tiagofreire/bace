#-*- coding: utf-8 -*-
from django.conf import settings
from django.db import models
from django.db.models import signals

class TipoMaterial(models.Model):
  class Meta:
    verbose_name = "Tipo de Material"
    verbose_name_plural = "Tipo de Materiais"
    
  descricao = models.CharField(u"Descrição",max_length=100,null=False,blank=False)
  
  def __unicode__(self):
    return self.descricao
    
class Material(models.Model):
  class Meta:
    verbose_name = "Material"
    verbose_name_plural = "Materiais"                                             
  
  tipo_material = models.ForeignKey(TipoMaterial,null=False,blank=False)
  codigo = models.CharField(u"Código",max_length=50)
  descricao = models.CharField(u"Descrição",max_length=100,null=False,blank=False)

  def __unicode__(self):
    return self.descricao
    
class Setor(models.Model):
  class Meta:
    verbose_name = "Setor"
    verbose_name_plural = "Setores"

  descricao = models.CharField(u"Descrição",max_length=100,null=False,blank=False)

  def __unicode__(self):
    return self.descricao
    

class Operador(models.Model):
  class Meta:
    verbose_name = "Operador"
    verbose_name_plural = "Operadores"                                             

  setor = models.ForeignKey(Setor,null=False,blank=False)
  nome = models.CharField(u"Nome",max_length=100,null=False,blank=False)

  def __unicode__(self):
    return self.nome

class GrupoProduto(models.Model):
  class Meta:
    verbose_name = "Grupo de Produto"
    verbose_name_plural = "Grupo de Produtos"

  codigo = models.CharField(u"Código",unique=True, max_length=100,null=False,blank=False)
  descricao = models.CharField(u"Descrição",max_length=100,null=False,blank=False)
                                                                   
  def __unicode__(self):
    return self.codigo     

class Produto(models.Model):
  
  class Meta:
    verbose_name = "Produto"
    verbose_name_plural = "Produtos"

  grupo_produto = models.ForeignKey(GrupoProduto,null=False,blank=False)
  codigo = models.CharField(u"Código",max_length=100,null=False,blank=False)
  descricao = models.TextField(u"Descrição",unique=True, max_length=100,null=False,blank=False)
  
  def __unicode__(self):
    return self.codigo