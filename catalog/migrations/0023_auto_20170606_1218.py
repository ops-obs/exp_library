# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-06-06 02:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0022_auto_20170606_1212'),
    ]

    operations = [
        migrations.AlterField(
            model_name='raid',
            name='name',
            field=models.CharField(choices=[('bfg8', '/mnt/bfg8'), ('bfg16', '/mnt/bfg16'), ('IVS', '/mnt/rdsi/IVS'), ('godzilla8', '/mnt/godzilla8'), ('godzilla16', '/mnt/godzilla16'), ('cornucopia', '/mnt/cornucopia'), ('AUSTRAL', '/mnt/rdsi/AUSTRAL'), ('astro', '/mnt/rdsi/astro'), ('sirius8', '/mnt/sirius8'), ('sirius16', '/mnt/sirius16')], max_length=16),
        ),
    ]