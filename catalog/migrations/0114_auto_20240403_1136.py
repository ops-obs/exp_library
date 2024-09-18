# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2024-04-03 00:36
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0113_auto_20240403_1135'),
    ]

    operations = [
        migrations.AlterField(
            model_name='scan',
            name='ctx',
            field=models.CharField(blank=True, choices=[('p', 'Pending'), ('c', 'Copying'), ('u', 'Uploaded'), ('f', 'Failed')], default='p', help_text='scan transferred to correlator', max_length=1, null=True),
        ),
        migrations.AlterField(
            model_name='scan',
            name='htx',
            field=models.CharField(blank=True, choices=[('p', 'Pending'), ('c', 'Copying'), ('u', 'Uploaded'), ('f', 'Failed')], default='p', help_text='scan moved to local store; here', max_length=1, null=True),
        ),
    ]
