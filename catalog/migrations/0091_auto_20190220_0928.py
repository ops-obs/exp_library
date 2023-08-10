# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2019-02-19 22:28
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0090_auto_20190208_1411'),
    ]

    operations = [
        migrations.AlterField(
            model_name='experimentinstance',
            name='ship_to',
            field=models.CharField(blank=True, default='Hobart', help_text='Ship module to this location once recorded', max_length=24, null=True),
        ),
    ]
