# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2019-03-22 08:26
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0091_auto_20190220_0928'),
    ]

    operations = [
        migrations.AlterField(
            model_name='correlator',
            name='name',
            field=models.CharField(choices=[('BONN', 'Bonn'), ('HAYS', 'Haystack'), ('WASH', 'Washington'), ('SHAO', 'Shanghai'), ('VLBA', 'VLBA'), ('GSI', 'Geoscience Institute'), ('VIEN', 'Vienna'), ('CURT', 'Curtin'), ('HOB', 'Hobart'), ('CASS', 'ATNF'), ('RUSS', 'Radio Astron'), ('JIVE', 'Jive Netherlands')], max_length=4, primary_key=True, serialize=False),
        ),
    ]
