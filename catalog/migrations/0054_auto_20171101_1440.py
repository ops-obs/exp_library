# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-11-01 03:40
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0053_auto_20171025_1403'),
    ]

    operations = [
        migrations.AlterField(
            model_name='experimentinstance',
            name='module',
            field=models.ManyToManyField(help_text='Module vsn', null=True, to='catalog.Module'),
        ),
    ]
