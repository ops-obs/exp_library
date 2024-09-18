# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2024-04-03 01:03
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0116_auto_20240403_1141'),
    ]

    operations = [
        migrations.AlterField(
            model_name='experimentinstance',
            name='hobart',
            field=models.CharField(blank=True, choices=[('p', 'Pending'), ('c', 'Copying'), ('u', 'Uploaded'), ('f', 'Failed')], default='p', help_text='Transferred to Hobart storage', max_length=1),
        ),
        migrations.AlterField(
            model_name='experimentinstance',
            name='transfer',
            field=models.CharField(blank=True, choices=[('p', 'Pending'), ('c', 'Copying'), ('u', 'Uploaded'), ('f', 'Failed')], default='p', help_text='Transfer to correlator status', max_length=1),
        ),
    ]