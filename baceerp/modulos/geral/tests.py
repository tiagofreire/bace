#-*- coding: utf-8 -*-
from django.test import TestCase
from baceerp.modulos.geral.models import TipoMaterial, Material,GrupoProduto,Produto

class GeralTest(TestCase):
  def test_cria_tipo_material(self):
    tipo_material = TipoMaterial(
      descricao = "Material 01"
    )
    tipo_material.save()
    
    list_tipo_material = TipoMaterial.objects.all()
    self.assertEquals(len(list_tipo_material),1)
    self.assertEquals(list_tipo_material[0].descricao,"Material 01")
    
  def test_cria_material(self):
  
    tipo_material = TipoMaterial(
      descricao = "Tipo Material 01"
    )
    tipo_material.save()
    
    material = Material(
      tipo_material = tipo_material,
      codigo = "0",
      descricao = "Material 01"
    )
    material.save()
    list_material = Material.objects.all()
    self.assertEquals(len(list_material),1)
    self.assertEquals(list_material[0].tipo_material.descricao,"Tipo Material 01")
    self.assertEquals(list_material[0].descricao,"Material 01")
    
  def test_grupo_produto(self):
    grupo_produto = GrupoProduto(
      codigo = "0",
      descricao = "Grupo Produto 01"
    )
    grupo_produto.save()
    
    list_grupo_produto = GrupoProduto.objects.all()
    self.assertEquals(len(list_grupo_produto),1)
    self.assertEquals(list_grupo_produto[0].codigo,"0")
    self.assertEquals(list_grupo_produto[0].descricao,"Grupo Produto 01")
    
  def test_produto(self):
    grupo_produto = GrupoProduto(
      codigo = "0",
      descricao = "Grupo Produto 02"
    )
    grupo_produto.save()
    grupo_produto = GrupoProduto.objects.get(codigo="0",descricao="Grupo Produto 02")

    produto = Produto(
      grupo_produto = grupo_produto,
      codigo = 0,
      descricao = "Produto 01"
    )
    produto.save()
    
    list_produto = Produto.objects.all()
    self.assertEquals(len(list_produto),1)
    self.assertEquals(list_produto[0].grupo_produto.descricao,"Grupo Produto 02")
    self.assertEquals(list_produto[0].codigo, "2.1")
    self.assertEquals(list_produto[0].descricao,"Produto 01")
