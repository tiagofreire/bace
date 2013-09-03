#-*- coding: utf-8 -*-
from django.contrib import admin
from django.contrib.admin.options import ModelAdmin,TabularInline
from models import *
                                  
class InlineNotaFiscal(TabularInline):
	model = MaterialNotaFiscal     
	extra = 1
	
class NotaFiscalAdmin(ModelAdmin):
	inlines = [InlineNotaFiscal]

admin.site.register(TipoMaterial)
admin.site.register(Material)
admin.site.register(Setor)
admin.site.register(Operador)
admin.site.register(GrupoProduto)
admin.site.register(Produto)
admin.site.register(MaterialNotaFiscal)
admin.site.register(NotaFiscal, NotaFiscalAdmin)