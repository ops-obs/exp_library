# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-08-22 04:52
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0031_auto_20170816_1548'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='correlator',
            name='id',
        ),
        migrations.AlterField(
            model_name='correlator',
            name='name',
            field=models.CharField(choices=[('BONN', 'Bonn'), ('HAYS', 'Haystack'), ('WASH', 'Washington'), ('SHAO', 'Shanghai'), ('VLBA', 'VLBA'), ('GSI', 'Geoscience Institute'), ('VIEN', 'Vienna')], max_length=4, primary_key=True, serialize=False),
        ),
    ]
