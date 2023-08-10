# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-06-02 05:13
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0013_auto_20170602_1454'),
    ]

    operations = [
        migrations.AlterField(
            model_name='expinstance',
            name='data_status',
            field=models.CharField(blank=True, choices=[('n', 'Not deleted'), ('p', 'Pending, correlated'), ('d', 'Deleted')], help_text='Data on module status', max_length=1),
        ),
        migrations.AlterField(
            model_name='expinstance',
            name='module_to_raid',
            field=models.CharField(blank=True, choices=[('p', 'Pending copy'), ('c', 'Copying'), ('u', 'Uploaded'), ('f', 'Failed')], help_text='Module upload to raid status', max_length=1),
        ),
        migrations.AlterField(
            model_name='expinstance',
            name='station',
            field=models.CharField(blank=True, choices=[('ke', 'Katherine'), ('ho', 'Hobart26'), ('hb', 'Hobart12'), ('yg', 'Yarragadee')], help_text='Station two letter i.d.', max_length=2),
        ),
        migrations.AlterField(
            model_name='expinstance',
            name='transfer_to_correlator',
            field=models.CharField(blank=True, choices=[('p', 'Pending'), ('c', 'Copying'), ('u', 'Uploaded'), ('f', 'Failed')], help_text='Transfer to correlator status', max_length=1),
        ),
    ]
