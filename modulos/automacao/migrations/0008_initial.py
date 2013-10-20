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
            ('valor_total', self.gf('django.db.models.fields.DecimalField')(max_digits=8, decimal_places=2)),
        ))
        db.send_create_signal(u'automacao', ['NotaFiscal'])

        # Adding model 'OrdemFabricacao'
        db.create_table(u'automacao_ordemfabricacao', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('numero_of', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('nota_fiscal', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['automacao.NotaFiscal'])),
            ('tipo_material', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.TipoMaterial'])),
            ('produto', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.Produto'])),
            ('operador', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.Operador'])),
            ('data_inicial', self.gf('django.db.models.fields.DateField')(max_length=100)),
            ('data_final', self.gf('django.db.models.fields.DateField')(max_length=100)),
            ('peso_bruto', self.gf('django.db.models.fields.DecimalField')(max_length=100, max_digits=8, decimal_places=2)),
            ('peso_liquido', self.gf('django.db.models.fields.DecimalField')(max_length=100, max_digits=8, decimal_places=2)),
            ('previsao', self.gf('django.db.models.fields.DecimalField')(max_length=100, max_digits=8, decimal_places=2)),
            ('perda', self.gf('django.db.models.fields.DecimalField')(max_length=100, max_digits=8, decimal_places=2)),
        ))
        db.send_create_signal(u'automacao', ['OrdemFabricacao'])


    def backwards(self, orm):
        # Deleting model 'NotaFiscal'
        db.delete_table(u'automacao_notafiscal')

        # Deleting model 'OrdemFabricacao'
        db.delete_table(u'automacao_ordemfabricacao')


    models = {
        u'automacao.notafiscal': {
            'Meta': {'object_name': 'NotaFiscal'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'numero': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '100'}),
            'valor_total': ('django.db.models.fields.DecimalField', [], {'max_digits': '8', 'decimal_places': '2'})
        },
        u'automacao.ordemfabricacao': {
            'Meta': {'object_name': 'OrdemFabricacao'},
            'data_final': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            'data_inicial': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'nota_fiscal': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.NotaFiscal']"}),
            'numero_of': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'operador': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.Operador']"}),
            'perda': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'peso_bruto': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'peso_liquido': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'previsao': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'produto': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.Produto']"}),
            'tipo_material': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['geral.TipoMaterial']"})
        },
        u'geral.grupoproduto': {
            'Meta': {'object_name': 'GrupoProduto'},
            'codigo': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '100'}),
            'descricao': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
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