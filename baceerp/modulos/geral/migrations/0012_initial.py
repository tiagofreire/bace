# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'TipoMaterial'
        db.create_table(u'geral_tipomaterial', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('descricao', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'geral', ['TipoMaterial'])

        # Adding model 'Material'
        db.create_table(u'geral_material', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('tipo_material', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.TipoMaterial'])),
            ('codigo', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('descricao', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'geral', ['Material'])

        # Adding model 'Setor'
        db.create_table(u'geral_setor', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('descricao', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'geral', ['Setor'])

        # Adding model 'Operador'
        db.create_table(u'geral_operador', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('setor', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.Setor'])),
            ('nome', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'geral', ['Operador'])

        # Adding model 'GrupoProduto'
        db.create_table(u'geral_grupoproduto', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('codigo', self.gf('django.db.models.fields.CharField')(unique=True, max_length=100)),
            ('descricao', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'geral', ['GrupoProduto'])

        # Adding model 'Produto'
        db.create_table(u'geral_produto', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('grupo_produto', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['geral.GrupoProduto'])),
            ('codigo', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('descricao', self.gf('django.db.models.fields.CharField')(unique=True, max_length=100)),
        ))
        db.send_create_signal(u'geral', ['Produto'])


    def backwards(self, orm):
        # Deleting model 'TipoMaterial'
        db.delete_table(u'geral_tipomaterial')

        # Deleting model 'Material'
        db.delete_table(u'geral_material')

        # Deleting model 'Setor'
        db.delete_table(u'geral_setor')

        # Deleting model 'Operador'
        db.delete_table(u'geral_operador')

        # Deleting model 'GrupoProduto'
        db.delete_table(u'geral_grupoproduto')

        # Deleting model 'Produto'
        db.delete_table(u'geral_produto')


    models = {
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

    complete_apps = ['geral']