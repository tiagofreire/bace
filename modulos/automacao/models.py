#-*- coding: utf-8 -*-
from django.conf import settings
from django.db import models
from django.db.models import signals

class Material(models.Model):
  descricao = models.CharField(u"Descrição",max_length=200, blank=False, null=False)
	
  class Meta:
    verbose_name = "Material"
    verbose_name_plural  = "Materiais"
    
    def __str__(self):
      return "%s" % self.descricao
    
    def __unicode__(self):
        return "%s" % self.descricao

class NotaFiscal(models.Model):
  numero = models.CharField(u"Número",max_length = 20, blank = False, null = False)  
  material = models.ManyToManyField(Material, blank=False,related_name="automacao_material",null=False,help_text = u"Selecione o material ou lista de materiais.")
  peso = models.CharField(u"Peso",max_length = 10, blank = False, null = False)

  class Meta:
    verbose_name = "Nota Fiscal"
    verbose_name_plural  = "Notas Fiscais"

    def __str__(self):
      return "%s" % self.numero

    def __unicode__(self):
        return "%s" % self.numero

