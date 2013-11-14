from django.test import TestCase
from django.utils import timezone
from baceerp.modulos.geral.models import TipoMaterial, Material,GrupoProduto,Produto
from baceerp.modulos.automacao.models import NotaFiscal, MaterialNotaFiscal,OrdemFabricacao

class AutomacaoTest(TestCase):
  def test_material_nota_fiscal(self):
    """
    Salva NotaFiscal
    """
    nota_fiscal = NotaFiscal.objects.create(
        numero = "1111"
      )
    nota_fiscal = NotaFiscal.objects.get(numero="1111")
    
    
    self.assertEquals(nota_fiscal.numero,"1111",nota_fiscal.numero)
    
    """
    Cria TipoMaterial
    """
    tipo_material = TipoMaterial.objects.create(
      descricao = "Tipo Material 01"
    )
    tipo_material = TipoMaterial.objects.get(descricao="Tipo Material 01")
    
    """
    Cria Material
    """
    material = Material.objects.create(
      tipo_material = tipo_material,
      codigo = "0",
      descricao = "Material 01"
    )
    list_material = Material.objects.all()
    self.assertEquals(len(list_material),1)
    self.assertEquals(list_material[0].tipo_material.descricao,"Tipo Material 01")
    self.assertEquals(list_material[0].descricao,"Material 01")
    
    
    """
    Cria MaterialNotaFiscal
    """
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
      
    """
    Instancia NotaFiscal com soma dos pesos dos materiais
    """
    nota_fiscal = NotaFiscal.objects.get(numero="1111")
    self.assertEquals(nota_fiscal.peso_total,3000.0)

    material_nota_fiscal = MaterialNotaFiscal.objects.get(id=material_nota_fiscal_3.id)  
    nota_fiscal = NotaFiscal.objects.get(id=nota_fiscal.id)
    print material_nota_fiscal.volume
    for x in range(1,int(material_nota_fiscal.volume)+1):
      of = OrdemFabricacao(
        nota_fiscal=NotaFiscal.objects.get(id=nota_fiscal.id),
        numero_of=str(nota_fiscal.numero)+str(material_nota_fiscal.material.codigo)+str(x),
        material=material_nota_fiscal,
        material_nota_fiscal_id=material_nota_fiscal.id
        )
      print of.numero_of
      of.save()     
    material_nota_fiscal.volume=0
    material_nota_fiscal.status = "PARA_PRODUCAO"
    material_nota_fiscal.ativo=True
    print material_nota_fiscal.volume
    material_nota_fiscal.save()    
    
      
    
