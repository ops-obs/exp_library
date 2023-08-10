# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-10-08 21:57
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0064_auto_20181002_1029'),
    ]

    operations = [
        migrations.AlterField(
            model_name='module',
            name='location',
            field=models.CharField(blank=True, choices=[('ke', 'Katherine'), ('ho', 'Hobart'), ('yg', 'Yarragadee'), ('cd', 'Ceduna'), ('ti', 'Tidbinbilla'), ('wn', 'Washington')], help_text='Station two letter i.d.', max_length=2),
        ),
    ]
