# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'NotaFiscal'
        db.create_table(u'automacao_notafiscal', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('numero', self.gf('django.db.models.fields.CharField')(unique=True, max_length=100)),
            ('peso_total', self.gf('django.db.models.fields.FloatField')()),
            ('peso_total_inicial', self.gf('django.db.models.fields.FloatField')()),
        ))
        db.send_create_signal(u'automacao', ['NotaFiscal'])

        # Adding model 'MaterialNotaFiscal'
        db.create_table(u'automacao_materialnotafiscal', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('nota_fiscal', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['automacao.NotaFiscal'])),
            ('material', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.Material'], null=True, blank=True)),
            ('volume', self.gf('django.db.models.fields.IntegerField')()),
            ('data_entrada', self.gf('django.db.models.fields.DateField')(max_length=100)),
            ('peso', self.gf('django.db.models.fields.FloatField')()),
            ('valor', self.gf('django.db.models.fields.FloatField')()),
            ('status', self.gf('django.db.models.fields.CharField')(max_length=100, null=True, blank=True)),
        ))
        db.send_create_signal(u'automacao', ['MaterialNotaFiscal'])

        # Adding model 'OrdemFabricacao'
        db.create_table(u'automacao_ordemfabricacao', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('numero_of', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('nota_fiscal', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['automacao.NotaFiscal'])),
            ('material', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['automacao.MaterialNotaFiscal'])),
            ('produto', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.Produto'], null=True, blank=True)),
            ('operador', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.Operador'], null=True, blank=True)),
            ('data_inicial', self.gf('django.db.models.fields.DateField')(max_length=100, null=True, blank=True)),
            ('data_final', self.gf('django.db.models.fields.DateField')(max_length=100, null=True, blank=True)),
            ('peso_bruto', self.gf('django.db.models.fields.FloatField')(null=True, blank=True)),
            ('peso_liquido', self.gf('django.db.models.fields.FloatField')(null=True, blank=True)),
            ('previsao', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.Previsao'])),
            ('perda', self.gf('django.db.models.fields.FloatField')(null=True, blank=True)),
        ))
        db.send_create_signal(u'automacao', ['OrdemFabricacao'])

        # Adding model 'EtiquetaRemessa'
        db.create_table(u'automacao_etiquetaremessa', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('numero_etiqueta_remessa', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('peso', self.gf('django.db.models.fields.FloatField')()),
            ('tipo_etiqueta', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('previsao', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.Previsao'])),
            ('data_inicio', self.gf('django.db.models.fields.DateField')(max_length=100)),
            ('ordem_fabricacao', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['automacao.OrdemFabricacao'])),
            ('peso_1g', self.gf('django.db.models.fields.FloatField')()),
            ('produto', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.Produto'])),
        ))
        db.send_create_signal(u'automacao', ['EtiquetaRemessa'])

        # Adding model 'EtiquetaRetorno'
        db.create_table(u'automacao_etiquetaretorno', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('etiqueta_remessa', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['automacao.EtiquetaRemessa'])),
        ))
        db.send_create_signal(u'automacao', ['EtiquetaRetorno'])

        # Adding model 'EtiquetaRetornoRaio'
        db.create_table(u'automacao_etiquetaretornoraio', (
            (u'etiquetaretorno_ptr', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['automacao.EtiquetaRetorno'], unique=True, primary_key=True)),
            ('peso_desengraxado', self.gf('django.db.models.fields.FloatField')()),
            ('peso_1g', self.gf('django.db.models.fields.FloatField')()),
            ('peso_polido', self.gf('django.db.models.fields.FloatField')()),
            ('quantidade', self.gf('django.db.models.fields.FloatField')(max_length=100)),
            ('data', self.gf('django.db.models.fields.DateField')(max_length=100)),
            ('responsavel', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'automacao', ['EtiquetaRetornoRaio'])

        # Adding model 'EtiquetaRetornoNiple'
        db.create_table(u'automacao_etiquetaretornoniple', (
            (u'etiquetaretorno_ptr', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['automacao.EtiquetaRetorno'], unique=True, primary_key=True)),
            ('peso_rosqueado', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('peso_1g', self.gf('django.db.models.fields.FloatField')()),
            ('data_peso_rosqueado', self.gf('django.db.models.fields.DateField')(max_length=100)),
            ('quantidade_peso_rosqueado', self.gf('django.db.models.fields.IntegerField')()),
            ('peso_niquelado', self.gf('django.db.models.fields.FloatField')()),
            ('peso_embalado', self.gf('django.db.models.fields.FloatField')()),
            ('data_peso_niquelado', self.gf('django.db.models.fields.DateField')(max_length=100)),
            ('quantidade_peso_niquelado', self.gf('django.db.models.fields.IntegerField')()),
            ('responsavel', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'automacao', ['EtiquetaRetornoNiple'])


    def backwards(self, orm):
        # Deleting model 'NotaFiscal'
        db.delete_table(u'automacao_notafiscal')

        # Deleting model 'MaterialNotaFiscal'
        db.delete_table(u'automacao_materialnotafiscal')

        # Deleting model 'OrdemFabricacao'
        db.delete_table(u'automacao_ordemfabricacao')

        # Deleting model 'EtiquetaRemessa'
        db.delete_table(u'automacao_etiquetaremessa')

        # Deleting model 'EtiquetaRetorno'
        db.delete_table(u'automacao_etiquetaretorno')

        # Deleting model 'EtiquetaRetornoRaio'
        db.delete_table(u'automacao_etiquetaretornoraio')

        # Deleting model 'EtiquetaRetornoNiple'
        db.delete_table(u'automacao_etiquetaretornoniple')


    models = {
        u'automacao.etiquetaremessa': {
            'Meta': {'object_name': 'EtiquetaRemessa'},
            'data_inicio': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'numero_etiqueta_remessa': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'ordem_fabricacao': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.OrdemFabricacao']"}),
            'peso': ('django.db.models.fields.FloatField', [], {}),
            'peso_1g': ('django.db.models.fields.FloatField', [], {}),
            'previsao': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.Previsao']"}),
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
            'peso_1g': ('django.db.models.fields.FloatField', [], {}),
            'peso_embalado': ('django.db.models.fields.FloatField', [], {}),
            'peso_niquelado': ('django.db.models.fields.FloatField', [], {}),
            'peso_rosqueado': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'quantidade_peso_niquelado': ('django.db.models.fields.IntegerField', [], {}),
            'quantidade_peso_rosqueado': ('django.db.models.fields.IntegerField', [], {}),
            'responsavel': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        u'automacao.etiquetaretornoraio': {
            'Meta': {'object_name': 'EtiquetaRetornoRaio', '_ormbases': [u'automacao.EtiquetaRetorno']},
            'data': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            u'etiquetaretorno_ptr': ('django.db.models.fields.related.OneToOneField', [], {'to': u"orm['automacao.EtiquetaRetorno']", 'unique': 'True', 'primary_key': 'True'}),
            'peso_1g': ('django.db.models.fields.FloatField', [], {}),
            'peso_desengraxado': ('django.db.models.fields.FloatField', [], {}),
            'peso_polido': ('django.db.models.fields.FloatField', [], {}),
            'quantidade': ('django.db.models.fields.FloatField', [], {'max_length': '100'}),
            'responsavel': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        u'automacao.materialnotafiscal': {
            'Meta': {'object_name': 'MaterialNotaFiscal'},
            'data_entrada': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'material': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.Material']", 'null': 'True', 'blank': 'True'}),
            'nota_fiscal': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.NotaFiscal']"}),
            'peso': ('django.db.models.fields.FloatField', [], {}),
            'status': ('django.db.models.fields.CharField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'valor': ('django.db.models.fields.FloatField', [], {}),
            'volume': ('django.db.models.fields.IntegerField', [], {})
        },
        u'automacao.notafiscal': {
            'Meta': {'object_name': 'NotaFiscal'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'numero': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '100'}),
            'peso_total': ('django.db.models.fields.FloatField', [], {}),
            'peso_total_inicial': ('django.db.models.fields.FloatField', [], {})
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
            'perda': ('django.db.models.fields.FloatField', [], {'null': 'True', 'blank': 'True'}),
            'peso_bruto': ('django.db.models.fields.FloatField', [], {'null': 'True', 'blank': 'True'}),
            'peso_liquido': ('django.db.models.fields.FloatField', [], {'null': 'True', 'blank': 'True'}),
            'previsao': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.Previsao']"}),
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
        u'geral.previsao': {
            'Meta': {'object_name': 'Previsao'},
            'descricao': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'geral.produto': {
            'Meta': {'object_name': 'Produto'},
            'codigo': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'descricao': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '100'}),
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