# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2020-06-15 02:39
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0104_auto_20200602_0936'),
    ]

    operations = [
        migrations.AddField(
            model_name='experimentinstance',
            name='path',
            field=models.CharField(blank=True, help_text='path on raid (raid column)', max_length=256, null=True),
        ),
    ]
