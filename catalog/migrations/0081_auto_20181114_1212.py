# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-11-14 01:12
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0080_auto_20181101_1416'),
    ]

    operations = [
        migrations.AlterField(
            model_name='module',
            name='vsn',
            field=models.CharField(max_length=8, primary_key=True, serialize=False, unique=True),
        ),
    ]
