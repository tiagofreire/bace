# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'TipoMaterial'
        db.create_table(u'automacao_tipomaterial', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('descricao', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'automacao', ['TipoMaterial'])

        # Adding model 'Material'
        db.create_table(u'automacao_material', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('tipo_material', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['automacao.TipoMaterial'])),
            ('descricao', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'automacao', ['Material'])

        # Adding model 'Setor'
        db.create_table(u'automacao_setor', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('descricao', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'automacao', ['Setor'])

        # Adding model 'Operador'
        db.create_table(u'automacao_operador', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('setor', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['automacao.Setor'])),
            ('nome', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'automacao', ['Operador'])

        # Adding model 'GrupoProduto'
        db.create_table(u'automacao_grupoproduto', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('codigo', self.gf('django.db.models.fields.CharField')(unique=True, max_length=100)),
            ('descricao', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'automacao', ['GrupoProduto'])

        # Adding model 'Produto'
        db.create_table(u'automacao_produto', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('grupo_produto', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['automacao.GrupoProduto'])),
            ('codigo', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('descricao', self.gf('django.db.models.fields.TextField')(unique=True, max_length=100)),
        ))
        db.send_create_signal(u'automacao', ['Produto'])

        # Adding model 'NotaFiscal'
        db.create_table(u'automacao_notafiscal', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('numero', self.gf('django.db.models.fields.CharField')(unique=True, max_length=100)),
            ('valor_total', self.gf('django.db.models.fields.DecimalField')(max_digits=8, decimal_places=2)),
        ))
        db.send_create_signal(u'automacao', ['NotaFiscal'])

        # Adding model 'MaterialNotaFiscal'
        db.create_table(u'automacao_materialnotafiscal', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('nota_fiscal', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['automacao.NotaFiscal'])),
            ('material', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['automacao.Material'])),
            ('volume', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('data_entrada', self.gf('django.db.models.fields.DateField')(max_length=100)),
            ('peso', self.gf('django.db.models.fields.DecimalField')(max_length=100, max_digits=8, decimal_places=2)),
            ('valor', self.gf('django.db.models.fields.DecimalField')(max_digits=8, decimal_places=2)),
        ))
        db.send_create_signal(u'automacao', ['MaterialNotaFiscal'])


    def backwards(self, orm):
        # Deleting model 'TipoMaterial'
        db.delete_table(u'automacao_tipomaterial')

        # Deleting model 'Material'
        db.delete_table(u'automacao_material')

        # Deleting model 'Setor'
        db.delete_table(u'automacao_setor')

        # Deleting model 'Operador'
        db.delete_table(u'automacao_operador')

        # Deleting model 'GrupoProduto'
        db.delete_table(u'automacao_grupoproduto')

        # Deleting model 'Produto'
        db.delete_table(u'automacao_produto')

        # Deleting model 'NotaFiscal'
        db.delete_table(u'automacao_notafiscal')

        # Deleting model 'MaterialNotaFiscal'
        db.delete_table(u'automacao_materialnotafiscal')


    models = {
        u'automacao.grupoproduto': {
            'Meta': {'object_name': 'GrupoProduto'},
            'codigo': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '100'}),
            'descricao': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'automacao.material': {
            'Meta': {'object_name': 'Material'},
            'descricao': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'tipo_material': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.TipoMaterial']"})
        },
        u'automacao.materialnotafiscal': {
            'Meta': {'object_name': 'MaterialNotaFiscal'},
            'data_entrada': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'material': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.Material']"}),
            'nota_fiscal': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.NotaFiscal']"}),
            'peso': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'valor': ('django.db.models.fields.DecimalField', [], {'max_digits': '8', 'decimal_places': '2'}),
            'volume': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        u'automacao.notafiscal': {
            'Meta': {'object_name': 'NotaFiscal'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'numero': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '100'}),
            'valor_total': ('django.db.models.fields.DecimalField', [], {'max_digits': '8', 'decimal_places': '2'})
        },
        u'automacao.operador': {
            'Meta': {'object_name': 'Operador'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'nome': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'setor': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.Setor']"})
        },
        u'automacao.produto': {
            'Meta': {'object_name': 'Produto'},
            'codigo': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'descricao': ('django.db.models.fields.TextField', [], {'unique': 'True', 'max_length': '100'}),
            'grupo_produto': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.GrupoProduto']"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'automacao.setor': {
            'Meta': {'object_name': 'Setor'},
            'descricao': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'automacao.tipomaterial': {
            'Meta': {'object_name': 'TipoMaterial'},
            'descricao': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        }
    }

    complete_apps = ['automacao']