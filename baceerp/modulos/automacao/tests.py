#-*- coding: utf-8 -*-
from django.test import TestCase
from django.utils import timezone
from baceerp.modulos.geral.models import TipoMaterial, Material,GrupoProduto,Produto
from baceerp.modulos.automacao.models import NotaFiscal, MaterialNotaFiscal,OrdemFabricacao,EtiquetaRemessa

class AutomacaoTest(TestCase):

  NUMERO_NOTA_FISCAL = "1234"

  def gera_nota_fiscal(self):
    nota_fiscal = NotaFiscal.objects.create(
        numero = self.NUMERO_NOTA_FISCAL
      )
    nota_fiscal = NotaFiscal.objects.get(numero=self.NUMERO_NOTA_FISCAL)
    
    return nota_fiscal
  
  def gera_tipo_material(self, descricao):
    tipo_material = TipoMaterial.objects.create(
      descricao = descricao
    )
    tipo_material = TipoMaterial.objects.get(descricao=descricao)
    
    return tipo_material
    
  def gera_material(self):
    tipo_material = self.gera_tipo_material("Tipo Material 01")
    material = Material.objects.create(
      tipo_material = tipo_material,
      codigo = "0",
      descricao = "Material 01"
    )
    material = Material.objects.all()
    return material[0]
    
  def gera_ordem_fabricacao(self,nota_fiscal, material_nota_fiscal):
    material_nota_fiscal = MaterialNotaFiscal.objects.get(id=material_nota_fiscal.id)  
    for x in range(1,int(material_nota_fiscal.volume)+1):
      of = OrdemFabricacao(
        nota_fiscal=NotaFiscal.objects.get(id=nota_fiscal.id),
        numero_of=str(nota_fiscal.numero)+str(material_nota_fiscal.material.codigo)+str(x),
        material=material_nota_fiscal
        )
      of.save()    
    print "##########################" 
    material_nota_fiscal.volume = 0
    material_nota_fiscal.status = "PARA_PRODUCAO"
    material_nota_fiscal.ativo = True
    material_nota_fiscal.save()
    
  def gera_lista_material_nota_fiscal(self):
    material = self.gera_material()
    nota_fiscal = self.gera_nota_fiscal()
    MaterialNotaFiscal.objects.create(
        nota_fiscal = nota_fiscal,
        material = material,
        volume = 10,
        data_entrada = timezone.now(),
        peso = 500.0,
        peso_inicial = 1000.0,
        valor = 10000.0,
        ativo = False,
      )
    MaterialNotaFiscal.objects.create(
        nota_fiscal = nota_fiscal,
        material = material,
        volume = 10,
        data_entrada = timezone.now(),
        peso = 500.0,
        peso_inicial = 1000.0,
        valor = 10000.0,
        ativo = False,
      )
    MaterialNotaFiscal.objects.create(
        nota_fiscal = nota_fiscal,
        material = material,
        volume = 1,
        data_entrada = timezone.now(),
        peso = 1000.0,
        peso_inicial = 1000.0,
        valor = 10000.0,
        ativo = False,
      )
    return MaterialNotaFiscal.objects.all()
                                                 
  def gera_produto(self):
    grupo_produto = GrupoProduto.objects.create(
      codigo = "1",
      descricao =  "Grupo Produto 1"
    )                              
    produto = Produto.objects.create(
      grupo_produto = grupo_produto,
      codigo = "0",
      descricao = "Prpduto 01"
    )
  def test_gera_nota_fiscal(self):
  
    lista_material_nota_fiscal = self.gera_lista_material_nota_fiscal()
    nota_fiscal = NotaFiscal.objects.get(numero=self.NUMERO_NOTA_FISCAL)
    """
    REGRA DE NEGOCIO:
      1. A NotaFiscal pode ter vários MaterialNotaFiscal ligados a ela. 
      2. A NotaFiscal tem um peso_total e peso_total_inicial. Os valores são referentes a soma de todos os MaterialNotaFiscal.peso da NotaFiscal
      Foi criado:
        1 nota fiscal -> self.NUMERO_NOTA_FISCAL
        3 materiais para nota fiscal com o peso de 1000.0g CADA
        
      O peso total da nota fiscal deve ser: soma de todos os MaterialNotaFiscal.peso da NotaFiscal
        ex.: 500.0 + 500.0 + 1000.0 = 2000.0
    """
    self.assertEquals(nota_fiscal.peso_total,2000.0)     
    
  
  def test_ordem_fabricacao(self):
    lista_material_nota_fiscal = self.gera_lista_material_nota_fiscal()
    nota_fiscal = NotaFiscal.objects.get(numero=self.NUMERO_NOTA_FISCAL)
    
    self.gera_ordem_fabricacao(nota_fiscal,lista_material_nota_fiscal[2])
    
    list_of = OrdemFabricacao.objects.all()
    of = list_of[0]
    of.peso_bruto = 250.0
    of.save()
    
    nota_fiscal = NotaFiscal.objects.get(numero=self.NUMERO_NOTA_FISCAL)
    material_nota_fiscal = MaterialNotaFiscal.objects.get(id=of.material.id)
    
    self.assertEquals(nota_fiscal.peso_total_inicial,2000.0)
    self.assertEquals(nota_fiscal.peso_total,(nota_fiscal.peso_total_inicial-of.peso_bruto))
    self.assertEquals(material_nota_fiscal.peso_inicial,1000.0)
    self.assertEquals(material_nota_fiscal.peso,(material_nota_fiscal.peso_inicial-of.peso_bruto))
    self.assertEquals(material_nota_fiscal.status,"PARA_PRODUCAO")  
      
  def test_gera_etiqueta(self):
    
    lista_material_nota_fiscal = self.gera_lista_material_nota_fiscal()
    nota_fiscal = NotaFiscal.objects.get(numero=self.NUMERO_NOTA_FISCAL)
    
    self.gera_ordem_fabricacao(nota_fiscal,lista_material_nota_fiscal[2])
    self.gera_produto()
    
    produto = Produto.objects.all()
    
    list_of = OrdemFabricacao.objects.all()
    of = list_of[0]
    of.peso_bruto = 250.0
    of.save()   
         
    etiqueta1 = EtiquetaRemessa.objects.create(
      numero_etiqueta_remessa = "0",
      peso = 123.0,
      tipo_etiqueta = "0",
      previsao = 0,
      data_inicio = timezone.now(),
      ordem_fabricacao = of,
      peso_1g = 21,
      produto = produto[0]
    )
    etiqueta2 = EtiquetaRemessa.objects.create(
      numero_etiqueta_remessa = "0",
      peso = 123.0,
      tipo_etiqueta = "0",
      previsao = 0,
      data_inicio = timezone.now(),
      ordem_fabricacao = of,
      peso_1g = 21,
      produto = produto[0]
    )                        
    of = OrdemFabricacao.objects.get(pk=etiqueta1.ordem_fabricacao.id)
    print 
    print "------"
    self.assertEquals(etiqueta1.previsao, 5.86)
    self.assertEquals(of.peso_liquido, 246.0)
    

