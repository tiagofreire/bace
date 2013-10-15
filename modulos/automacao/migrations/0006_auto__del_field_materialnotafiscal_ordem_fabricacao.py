# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Deleting field 'MaterialNotaFiscal.ordem_fabricacao'
        db.delete_column(u'automacao_materialnotafiscal', 'ordem_fabricacao_id')

        # Adding M2M table for field materia_nota_fiscal on 'OrdemFabricacao'
        m2m_table_name = db.shorten_name(u'automacao_ordemfabricacao_materia_nota_fiscal')
        db.create_table(m2m_table_name, (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('ordemfabricacao', models.ForeignKey(orm[u'automacao.ordemfabricacao'], null=False)),
            ('materialnotafiscal', models.ForeignKey(orm[u'automacao.materialnotafiscal'], null=False))
        ))
        db.create_unique(m2m_table_name, ['ordemfabricacao_id', 'materialnotafiscal_id'])


    def backwards(self, orm):
        # Adding field 'MaterialNotaFiscal.ordem_fabricacao'
        db.add_column(u'automacao_materialnotafiscal', 'ordem_fabricacao',
                      self.gf('django.db.models.fields.related.ForeignKey')(to=orm['automacao.OrdemFabricacao'], null=True, blank=True),
                      keep_default=False)

        # Removing M2M table for field materia_nota_fiscal on 'OrdemFabricacao'
        db.delete_table(db.shorten_name(u'automacao_ordemfabricacao_materia_nota_fiscal'))


    models = {
        u'automacao.grupoproduto': {
            'Meta': {'object_name': 'GrupoProduto'},
            'codigo': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '100'}),
            'descricao': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'automacao.material': {
            'Meta': {'object_name': 'Material'},
            'codigo': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
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
            'status': ('django.db.models.fields.CharField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
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
        u'automacao.ordemfabricacao': {
            'Meta': {'object_name': 'OrdemFabricacao'},
            'data_final': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            'data_inicial': ('django.db.models.fields.DateField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'materia_nota_fiscal': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['automacao.MaterialNotaFiscal']", 'symmetrical': 'False'}),
            'nota_fiscal': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.NotaFiscal']"}),
            'numero_of': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'operador': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.Operador']"}),
            'perda': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'peso_bruto': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'peso_liquido': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'previsao': ('django.db.models.fields.DecimalField', [], {'max_length': '100', 'max_digits': '8', 'decimal_places': '2'}),
            'produto': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.Produto']"}),
            'tipo_material': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['automacao.TipoMaterial']"})
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