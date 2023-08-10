# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-12-17 01:07
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0086_auto_20181214_0928'),
    ]

    operations = [
        migrations.AlterField(
            model_name='experimentinstance',
            name='sched_size',
            field=models.IntegerField(blank=True, help_text='Scheduled experiment data GB', null=True),
        ),
        migrations.AlterField(
            model_name='module',
            name='location',
            field=models.CharField(choices=[('ke', 'Katherine'), ('ho', 'Hobart'), ('yg', 'Yarragadee'), ('cd', 'Ceduna'), ('ti', 'Tidbinbilla'), ('wn', 'Washington')], help_text='Enter new (destination) location', max_length=2, null=True),
        ),
        migrations.AlterField(
            model_name='module',
            name='vsn',
            field=models.CharField(blank=True, help_text='8 character Volume Serial Number', max_length=8, primary_key=True, serialize=False, unique=True),
        ),
    ]
