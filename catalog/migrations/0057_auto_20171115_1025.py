# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-11-14 23:25
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0056_auto_20171114_1206'),
    ]

    operations = [
        migrations.AlterField(
            model_name='correlator',
            name='name',
            field=models.CharField(choices=[('BONN', 'Bonn'), ('HAYS', 'Haystack'), ('WASH', 'Washington'), ('SHAO', 'Shanghai'), ('VLBA', 'VLBA'), ('GSI', 'Geoscience Institute'), ('VIEN', 'Vienna'), ('CURT', 'Curtin'), ('HOB', 'Hobart')], max_length=4, primary_key=True, serialize=False),
        ),
    ]
