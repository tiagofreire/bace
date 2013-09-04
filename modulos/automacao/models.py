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
    
  tipo_material = models.ForeignKey("TipoMaterial",null=False,blank=False)
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

  setor = models.ForeignKey("Setor",null=False,blank=False)
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

  grupo_produto = models.ForeignKey("GrupoProduto",null=False,blank=False)
  codigo = models.CharField(u"Código",max_length=100,null=False,blank=False)
  descricao = models.TextField(u"Descrição",unique=True, max_length=100,null=False,blank=False)
  
  def __unicode__(self):
    return self.codigo
    
class NotaFiscal(models.Model):
  class Meta:
    verbose_name = "Nota Fiscal"
    verbose_name_plural = "Notas Fiscais"
    
  numero = models.CharField(u"Número", max_length=100,blank=False,null=False, unique=True)
  valor_total = models.DecimalField(u"Valor Total", max_digits=8,decimal_places=2,blank=False,null=False)
  
  def __unicode__(self):
    return self.numero
  
class MaterialNotaFiscal(models.Model):
  class Meta:
    verbose_name = "Material"
    verbose_name_plural = "Materiais"
    
  nota_fiscal = models.ForeignKey(NotaFiscal)
  material = models.ForeignKey(Material,blank=False,null=False)
  volume = models.CharField(u"Volume", max_length=100,blank=False,null=False)
  data_entrada = models.DateField(u"Data de Entrada", max_length=100,blank=False,null=False)
  peso = models.DecimalField(u"Peso", max_length=100,max_digits=8,decimal_places=2,blank=False,null=False)
  valor = models.DecimalField(u"Valor", max_digits=8,decimal_places=2,blank=False,null=False)
  
  def __unicode__(self):
    return self.material.descricao

#===================================== Signals ====================================================================================
def post_delete_filme(signal, instance, sender, **kwargs):
	print "deu certo!"
signals.pre_save.connect(post_delete_filme, sender = NotaFiscal)