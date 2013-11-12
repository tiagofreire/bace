#-*- coding: utf-8 -*-
from django.db import models
from baceerp.modulos.geral.models import Material, Produto, Operador, Previsao
from django.db.models.aggregates import Max
from django.utils.numberformat import format
from django.template.defaultfilters import default

class NotaFiscal(models.Model):
  class Meta:
    verbose_name = "Nota Fiscal"
    verbose_name_plural = "Notas Fiscais"
    
  numero = models.CharField(u"Número", max_length=100,blank=False,null=False, unique=True)
  peso_total = models.FloatField(u"Valor Total",help_text="Soma peso de todos os materiais")
  peso_total_inicial = models.FloatField(u"Valor Total Inicial")<<<<<<< HEAD
  ativo = models.BooleanField(default=False)
  
  def __unicode__(self):
    return self.numero
       
class MaterialNotaFiscal(models.Model):
  STATUS_MATERIAL = (
     ("0","Em aberto"),
     ("1", u"Para produção"),
     ("2", "Finalizado"),
   )  
  nota_fiscal = models.ForeignKey(NotaFiscal)
  material = models.ForeignKey(Material,blank=False,null=False)
  volume = models.IntegerField(u"Volume",blank=False,null=False)
  data_entrada = models.DateField(u"Data de Entrada", max_length=100,blank=False,null=False)
  peso = models.FloatField(u"Peso",blank=False,null=False)
  peso_inicial = models.FloatField(blank=False,null=False)
  valor = models.FloatField(u"Valor",blank=False,null=False)
  status = models.CharField("Status",max_length=100, choices=STATUS_MATERIAL,blank=True,null=True)
  ativo = models.BooleanField()
  
  class Meta:
    verbose_name = "Material"
    verbose_name_plural = "Materiais"   

  def __unicode__(self):
    return self.material.descricao

  def save(self, *args, **kwargs):
    self.peso_inicial = self.peso
    nf = NotaFiscal.objects.get(numero = self.nota_fiscal.numero)
    nf.peso_total = nf.peso_total + self.peso
    nf.peso_total_inicial = nf.peso_total_inicial + self.peso_inicial
    nf.ativo = True
    nf.save() 
    
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
  peso_bruto = models.FloatField("Peso Bruto",blank=True,null=True)
  peso_liquido = models.FloatField(u"Peso Líquido",blank=True,null=True)
  previsao = models.ForeignKey(Previsao,blank=True,null=True)
  perda = models.FloatField(u"Perda",blank=True,null=True)
  ativo = models.BooleanField(default=False)
  
  def __unicode__(self):
    return self.numero_of

#   def save(self, *args, **kwargs):
#     import sys      
#     nota_fiscal = NotaFiscal.objects.get(numero=self.nota_fiscal)
#     if self.id != None:
#       mnf = MaterialNotaFiscal.objects.filter(ordem_fabricacao_id=self.numero_of)
#       if self.peso_bruto == "":
#         mnf.ordem_fabricacao_id = self.id
#         nota_fiscal.peso_total = round((nf.peso_total-self.peso_bruto),2)
#         nota_fiscal.save()  
# 
#     super(OrdemFabricacao, self).save(*args, **kwargs)           

  def save(self, *args, **kwargs):
    import sys      

    if self.id != None and self.ativo is False:
      mnf = MaterialNotaFiscal.objects.get(nota_fiscal__numero = self.nota_fiscal)
      mnf.peso = round((mnf.peso-self.peso_bruto),2)
      mnf.save()
      self.ativo = True

    super(OrdemFabricacao, self).save(*args, **kwargs)           
      
class EtiquetaRemessa(models.Model):
  TIPO_ETIQUETA = (
     ("0","Raio"),
     ("1", "Niple"),
   )
  
  ALFABETO = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
   
  numero_etiqueta_remessa = models.CharField(u"Etiqueta",max_length=100,blank=False,null=False)  
  peso = models.FloatField(u"Peso",blank=False,null=False)
  tipo_etiqueta = models.CharField("Tipo de Etiqueta",max_length=100, choices=TIPO_ETIQUETA,blank=False,null=False)
  previsao = models.ForeignKey(Previsao,blank=False,null=False)
  data_inicio = models.DateField(u"Data de Início", max_length=100,blank=False,null=False)
  ordem_fabricacao = models.ForeignKey(OrdemFabricacao)
  peso_1g = models.FloatField(u"Peso 1g",blank=False,null=False)
  produto = models.ForeignKey(Produto)
  ativo = models.BooleanField()
  
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
  peso_desengraxado = models.FloatField(u"Peso Desengraxado",blank=False,null=False)
  peso_1g = models.FloatField(u"Peso 1g", blank=False,null=False)
  peso_polido = models.FloatField(u"Peso Polido", blank=False,null=False)
  quantidade = models.FloatField("Quantidade",max_length=100,blank=False,null=False)
  data = models.DateField(u"Data", max_length=100,blank=False,null=False)
  responsavel = models.CharField(u"Responsável",max_length=100,blank=False,null=False)
  ativo = models.BooleanField()
    
class EtiquetaRetornoNiple(EtiquetaRetorno):
  peso_rosqueado = models.CharField(u"Peso Rosqueado", max_length=100,blank=False,null=False)
  peso_1g = models.FloatField(u"Peso 1g",blank=False,null=False)
  data_peso_rosqueado = models.DateField(u"Data Rosqueado", max_length=100,blank=False,null=False)
  quantidade_peso_rosqueado = models.IntegerField("Quantidade Peso Rosqueado",blank=False,null=False)
  peso_niquelado = models.FloatField(u"Peso Niquelado",blank=False,null=False)
  data_peso_niquelado = models.DateField(u"Data Niquelado", max_length=100,blank=False,null=False)
  quantidade_peso_niquelado = models.IntegerField("Quantidade Peso Niquelado",blank=False,null=False)
  peso_embalado = models.FloatField(u"Peso Embalado", blank=False,null=False)
  data_peso_niquelado = models.DateField(u"Data Embalado", max_length=100,blank=False,null=False)
  quantidade_peso_niquelado = models.IntegerField("Quantidade Peso Embalado",blank=False,null=False)
  responsavel = models.CharField(u"Responsável",max_length=100,blank=False,null=False)
  ativo = models.BooleanField()
  
