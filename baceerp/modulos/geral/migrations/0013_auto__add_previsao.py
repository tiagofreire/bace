# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Previsao'
        db.create_table(u'geral_previsao', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('descricao', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'geral', ['Previsao'])


    def backwards(self, orm):
        # Deleting model 'Previsao'
        db.delete_table(u'geral_previsao')


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

    complete_apps = ['geral']