# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-06-01 05:08
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0005_auto_20170601_1459'),
    ]

    operations = [
        migrations.AlterField(
            model_name='correlator',
            name='storage',
            field=models.OneToOneField(null=True, on_delete=django.db.models.deletion.SET_NULL, to='catalog.Storage'),
        ),
    ]