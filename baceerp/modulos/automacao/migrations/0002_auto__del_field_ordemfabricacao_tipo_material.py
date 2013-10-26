# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Deleting field 'OrdemFabricacao.tipo_material'
        db.delete_column(u'automacao_ordemfabricacao', 'tipo_material_id')


    def backwards(self, orm):
        # Adding field 'OrdemFabricacao.tipo_material'
        db.add_column(u'automacao_ordemfabricacao', 'tipo_material',
                      self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.TipoMaterial'], null=True, blank=True),
                      keep_default=False)


    models = {
        u'automacao.etiquetaremessa': {
            'Meta': {'object_name': 'EtiquetaRemessa'},
            'data_inicio': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'numero_etiqueta_remessa': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'ordem_fabricacao': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.OrdemFabricacao']"}),
            'peso': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'peso_1g': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'previsao': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'null': 'True', 'max_digits': '8', 'decimal_places': '2', 'blank': 'True'}),
            'produto': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.Produto']"}),
            'tipo_etiqueta': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        u'automacao.etiquetaretorno': {
            'Meta': {'object_name': 'EtiquetaRetorno'},
            'etiqueta_remessa': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.EtiquetaRemessa']"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'automacao.etiquetaretornoniple': {
            'Meta': {'object_name': 'EtiquetaRetornoNiple', '_ormbases': [u'automacao.EtiquetaRetorno']},
            'data_peso_niquelado': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            'data_peso_rosqueado': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            u'etiquetaretorno_ptr': ('django.db.models.fields.related.OneToOneField', [], {'to': u"orm['automacao.EtiquetaRetorno']", 'unique': 'True', 'primary_key': 'True'}),
            'peso_1g': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'peso_embalado': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'peso_niquelado': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'peso_rosqueado': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'quantidade_peso_niquelado': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'quantidade_peso_rosqueado': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'responsavel': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        u'automacao.etiquetaretornoraio': {
            'Meta': {'object_name': 'EtiquetaRetornoRaio', '_ormbases': [u'automacao.EtiquetaRetorno']},
            'data': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            u'etiquetaretorno_ptr': ('django.db.models.fields.related.OneToOneField', [], {'to': u"orm['automacao.EtiquetaRetorno']", 'unique': 'True', 'primary_key': 'True'}),
            'peso_1g': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'peso_desengraxado': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'peso_polido': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'quantidade': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'responsavel': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        u'automacao.materialnotafiscal': {
            'Meta': {'object_name': 'MaterialNotaFiscal'},
            'data_entrada': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'material': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.Material']", 'null': 'True', 'blank': 'True'}),
            'nota_fiscal': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.NotaFiscal']"}),
            'peso': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'status': ('django.db.models.fields.CharField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'valor': ('django.db.models.fields.DecimalField', [], {'max_digits': '8', 'decimal_places': '2'}),
            'volume': ('django.db.models.fields.PositiveSmallIntegerField', [], {'default': '0'})
        },
        u'automacao.notafiscal': {
            'Meta': {'object_name': 'NotaFiscal'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'numero': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '100'}),
            'valor_total': ('django.db.models.fields.DecimalField', [], {'max_digits': '8', 'decimal_places': '2'})
        },
        u'automacao.ordemfabricacao': {
            'Meta': {'object_name': 'OrdemFabricacao'},
            'data_final': ('django.db.models.fields.DateField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'data_inicial': ('django.db.models.fields.DateField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'material': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.MaterialNotaFiscal']"}),
            'nota_fiscal': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.NotaFiscal']"}),
            'numero_of': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'operador': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.Operador']", 'null': 'True', 'blank': 'True'}),
            'perda': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'null': 'True', 'max_digits': '8', 'decimal_places': '2', 'blank': 'True'}),
            'peso_bruto': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'null': 'True', 'max_digits': '8', 'decimal_places': '2', 'blank': 'True'}),
            'peso_liquido': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'null': 'True', 'max_digits': '8', 'decimal_places': '2', 'blank': 'True'}),
            'previsao': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'null': 'True', 'max_digits': '8', 'decimal_places': '2', 'blank': 'True'}),
            'produto': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.Produto']", 'null': 'True', 'blank': 'True'})
        },
        u'geral.grupoproduto': {
            'Meta': {'object_name': 'GrupoProduto'},
            'codigo': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '100'}),
            'descricao': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'geral.material': {
            'Meta': {'object_name': 'Material'},
            'codigo': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'descricao': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'tipo_material': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.TipoMaterial']"})
        },
        u'geral.operador': {
            'Meta': {'object_name': 'Operador'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'nome': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'setor': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.Setor']"})
        },
        u'geral.produto': {
            'Meta': {'object_name': 'Produto'},
            'codigo': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'descricao': ('django.db.models.fields.TextField', [], {'unique': 'True', 'max_length': '100'}),
            'grupo_produto': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.GrupoProduto']"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'geral.setor': {
            'Meta': {'object_name': 'Setor'},
            'descricao': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'geral.tipomaterial': {
            'Meta': {'object_name': 'TipoMaterial'},
            'descricao': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        }
    }

    complete_apps = ['automacao']