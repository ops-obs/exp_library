# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-11-22 06:12
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0081_auto_20181114_1212'),
    ]

    operations = [
        migrations.AlterField(
            model_name='module',
            name='location',
            field=models.CharField(choices=[('ke', 'Katherine'), ('ho', 'Hobart'), ('yg', 'Yarragadee'), ('cd', 'Ceduna'), ('ti', 'Tidbinbilla'), ('wn', 'Washington')], help_text='Enter new location', max_length=2, null=True),
        ),
        migrations.AlterField(
            model_name='module',
            name='ship',
            field=models.CharField(blank=True, help_text='Enter shipping reference', max_length=20, null=True),
        ),
    ]
