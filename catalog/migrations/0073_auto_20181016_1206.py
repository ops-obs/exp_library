# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-10-16 01:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0072_auto_20181012_1454'),
    ]

    operations = [
        migrations.AlterField(
            model_name='correlator',
            name='name',
            field=models.CharField(choices=[('BONN', 'Bonn'), ('HAYS', 'Haystack'), ('WASH', 'Washington'), ('SHAO', 'Shanghai'), ('VLBA', 'VLBA'), ('GSI', 'Geoscience Institute'), ('VIEN', 'Vienna'), ('CURT', 'Curtin'), ('HOB', 'Hobart'), ('CASS', 'ATNF'), ('RUSS', 'Radio Astron')], max_length=4, primary_key=True, serialize=False),
        ),
    ]
