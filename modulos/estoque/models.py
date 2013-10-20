#-*- coding: utf-8 -*-
from django.conf import settings
from django.db import models
from django.db.models import signals
from django.db import models
from modulos.geral.models import *
from modulos.automacao.models import NotaFiscal

class MaterialNotaFiscal(models.Model):
  STATUS_MATERIAL = (
     ("0","Em aberto"),
     ("1", u"Para produção"),
     ("2", "Finalizado"),
   )  
  nota_fiscal = models.ForeignKey(NotaFiscal)
  material = models.ForeignKey(Material,blank=False,null=False)
  volume = models.CharField(u"Volume", max_length=100,blank=False,null=False)
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
