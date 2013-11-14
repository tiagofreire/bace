from django.test import TestCase
from django.utils import timezone
from baceerp.modulos.geral.models import TipoMaterial, Material,GrupoProduto,Produto
from baceerp.modulos.automacao.models import NotaFiscal, MaterialNotaFiscal

class AutomacaoTest(TestCase):
  def test_material_nota_fiscal(self):
    nota_fiscal = NotaFiscal.objects.create(
        numero = "1111"
      )
    nota_fiscal = NotaFiscal.objects.get(numero="1111")
    
    self.assertEquals(nota_fiscal.numero,"1111",nota_fiscal.numero)
    
    tipo_material = TipoMaterial.objects.create(
      descricao = "Tipo Material 01"
    )
    tipo_material = TipoMaterial.objects.get(descricao="Tipo Material 01")
    
    material = Material.objects.create(
      tipo_material = tipo_material,
      codigo = "0",
      descricao = "Material 01"
    )
    list_material = Material.objects.all()
    self.assertEquals(len(list_material),1)
    self.assertEquals(list_material[0].tipo_material.descricao,"Tipo Material 01")
    self.assertEquals(list_material[0].descricao,"Material 01")
    
    material_nota_fiscal_1 = MaterialNotaFiscal.objects.create(
        nota_fiscal = nota_fiscal,
        material = material,
        volume = 10,
        data_entrada = timezone.now(),
        peso = 1000.0,
        peso_inicial = 1000.0,
        valor = 10000.0,
        ativo = False,
      )
    material_nota_fiscal_2 = MaterialNotaFiscal.objects.create(
        nota_fiscal = nota_fiscal,
        material = material,
        volume = 10,
        data_entrada = timezone.now(),
        peso = 1000.0,
        peso_inicial = 1000.0,
        valor = 10000.0,
        ativo = False,
      )
    material_nota_fiscal_3 = MaterialNotaFiscal.objects.create(
        nota_fiscal = nota_fiscal,
        material = material,
        volume = 10,
        data_entrada = timezone.now(),
        peso = 1000.0,
        peso_inicial = 1000.0,
        valor = 10000.0,
        ativo = False,
      )
    nota_fiscal = NotaFiscal.objects.get(numero="1111")
    self.assertEquals(nota_fiscal.peso_total,3000.0)
    
