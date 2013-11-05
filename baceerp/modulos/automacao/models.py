#-*- coding: utf-8 -*-
from django.db import models
from baceerp.modulos.geral.models import Material, Produto, Operador, Previsao
from django.db.models.aggregates import Max
from django.utils.numberformat import format

class NotaFiscal(models.Model):
  class Meta:
    verbose_name = "Nota Fiscal"
    verbose_name_plural = "Notas Fiscais"
    
  numero = models.CharField(u"Número", max_length=100,blank=False,null=False, unique=True)
  peso_total = models.CharField(u"Valor Total",max_length=100,help_text="Soma peso de todos os materiais")
  peso_total_inicial = models.CharField(u"Valor Total Inicial",max_length=100)
  
  def __unicode__(self):
    return self.numero

  def save(self, *args, **kwargs):
    self.peso_total_inicial = self.peso_total 
    super(NotaFiscal, self).save(*args, **kwargs)         
       
class MaterialNotaFiscal(models.Model):
  STATUS_MATERIAL = (
     ("0","Em aberto"),
     ("1", u"Para produção"),
     ("2", "Finalizado"),
   )  
  nota_fiscal = models.ForeignKey(NotaFiscal)
  material = models.ForeignKey(Material,blank=True,null=True)
  volume = models.PositiveSmallIntegerField(u"Volume",blank=False,null=False)
  data_entrada = models.DateField(u"Data de Entrada", max_length=100,blank=False,null=False)
  peso = models.CharField(u"Peso", max_length=100,blank=False,null=False)
  valor = models.CharField(u"Valor",max_length=100,blank=False,null=False)
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
  produto = models.ForeignKey(Produto,blank=True,null=True)
  operador = models.ForeignKey(Operador,blank=True,null=True)
  data_inicial = models.DateField(u"Data Inicial", max_length=100,blank=True,null=True)
  data_final = models.DateField(u"Data Final", max_length=100,blank=True,null=True)
  peso_bruto = models.CharField("Peso Bruto", max_length=100,blank=True,null=True)
  peso_liquido = models.CharField(u"Peso Líquido", max_length=100,blank=True,null=True)
  previsao = models.ForeignKey(Previsao,blank=False,null=False)
  perda = models.CharField(u"Perda", max_length=100,blank=True,null=True)

  def __unicode__(self):
    return self.numero_of

  def save(self, *args, **kwargs):
    import sys      
    from decimal import *
    
    nf = NotaFiscal.objects.get(numero=self.nota_fiscal)
    print format(nf.peso_total,'.')
    nf.peso_total = str(int(nf.peso_total) - int(self.peso_bruto))
    print nf.peso_total    
    sys.exit()
    nf.save()

    super(OrdemFabricacao, self).save(*args, **kwargs)           

      
class EtiquetaRemessa(models.Model):
  TIPO_ETIQUETA = (
     ("0","Raio"),
     ("1", "Niple"),
   )
  
  ALFABETO = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
   
  numero_etiqueta_remessa = models.CharField(u"Etiqueta",max_length=100,blank=False,null=False)  
  peso = models.CharField(u"Peso", max_length=100,blank=False,null=False)
  tipo_etiqueta = models.CharField("Tipo de Etiqueta",max_length=100, choices=TIPO_ETIQUETA,blank=False,null=False)
  previsao = models.ForeignKey(Previsao,blank=False,null=False)
  data_inicio = models.DateField(u"Data de Início", max_length=100,blank=False,null=False)
  ordem_fabricacao = models.ForeignKey(OrdemFabricacao)
  peso_1g = models.CharField(u"Peso 1g", max_length=100,blank=False,null=False)
  produto = models.ForeignKey(Produto)
  
  vol = 1
  def save(self, *args, **kwargs):
    quantidade_etiqueta_of = EtiquetaRemessa.objects.filter(ordem_fabricacao=self.ordem_fabricacao).count()
    print quantidade_etiqueta_of
    self.numero_etiqueta_remessa = str(self.ordem_fabricacao.numero_of)+str(self.ALFABETO[quantidade_etiqueta_of])    
    print self.numero_etiqueta_remessa
    super(EtiquetaRemessa, self).save(*args, **kwargs) 

  class Meta:
    verbose_name= "Etiqueta"
    verbose_name_plural= "Eiquetas"  

  def __unicode__(self):
    return self.numero_etiqueta_remessa   
    
    
class EtiquetaRetorno(models.Model):
  etiqueta_remessa = models.ForeignKey(EtiquetaRemessa)
    
    
class EtiquetaRetornoRaio(EtiquetaRetorno):
  peso_desengraxado = models.CharField(u"Peso Desengraxado", max_length=100,blank=False,null=False)
  peso_1g = models.CharField(u"Peso 1g", max_length=100,blank=False,null=False)
  peso_polido = models.CharField(u"Peso Polido", max_length=100,blank=False,null=False)
  quantidade = models.CharField("Quantidade",max_length=100,blank=False,null=False)
  data = models.DateField(u"Data", max_length=100,blank=False,null=False)
  responsavel = models.CharField(u"Responsável",max_length=100,blank=False,null=False)
    
    
class EtiquetaRetornoNiple(EtiquetaRetorno):
  peso_rosqueado = models.CharField(u"Peso Rosqueado", max_length=100,blank=False,null=False)
  peso_1g = models.CharField(u"Peso 1g", max_length=100,blank=False,null=False)
  data_peso_rosqueado = models.DateField(u"Data Rosqueado", max_length=100,blank=False,null=False)
  quantidade_peso_rosqueado = models.CharField("Quantidade Peso Rosqueado",max_length=100,blank=False,null=False)
  peso_niquelado = models.CharField(u"Peso Niquelado", max_length=100,blank=False,null=False)
  data_peso_niquelado = models.DateField(u"Data Niquelado", max_length=100,blank=False,null=False)
  quantidade_peso_niquelado = models.CharField("Quantidade Peso Niquelado",max_length=100,blank=False,null=False)
  peso_embalado = models.CharField(u"Peso Embalado", max_length=100,blank=False,null=False)
  data_peso_niquelado = models.DateField(u"Data Embalado", max_length=100,blank=False,null=False)
  quantidade_peso_niquelado = models.CharField("Quantidade Peso Embalado",max_length=100,blank=False,null=False)
  responsavel = models.CharField(u"Responsável",max_length=100,blank=False,null=False)
