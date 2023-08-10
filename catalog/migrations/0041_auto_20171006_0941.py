# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-10-05 22:41
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0040_auto_20171006_0906'),
    ]

    operations = [
        migrations.AlterField(
            model_name='experimentinstance',
            name='module',
            field=models.ManyToManyField(blank=True, to='catalog.Module'),
        ),
        migrations.AlterField(
            model_name='experimentinstance',
            name='raid',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='catalog.Raid'),
        ),
        migrations.AlterField(
            model_name='experimentinstance',
            name='rec_size',
            field=models.IntegerField(blank=True, help_text='Recorded experiment data GB', null=True),
        ),
    ]