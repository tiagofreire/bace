#-*- coding: utf-8 -*-
from django import forms
from django.contrib.admin import widgets
from django.db.models import Q
from django.forms import ModelForm
from models import OrdemFabricacao

class FormOrdemFabricacao(ModelForm):
  class Meta:
    model = OrdemFabricacao