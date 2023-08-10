# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2020-09-02 00:30
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0106_auto_20200717_1518'),
    ]

    operations = [
        migrations.RenameField(
            model_name='experimentinstance',
            old_name='to_hobart',
            new_name='hobart',
        ),
        migrations.AlterField(
            model_name='type',
            name='name',
            field=models.CharField(choices=[('rivs', 'Rapid IVS'), ('ivs', 'IVS'), ('ra', 'Radioastron'), ('aus', 'Austral'), ('lba', 'LBA'), ('cont', 'CONT'), ('spi', 'Spirals')], help_text='Enter experiment type (e.g. rapid, radioastron, austral)', max_length=4, primary_key=True, serialize=False),
        ),
    ]
