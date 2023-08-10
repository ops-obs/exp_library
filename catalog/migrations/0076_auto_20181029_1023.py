# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-10-28 23:23
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0075_auto_20181029_1011'),
    ]

    operations = [
        migrations.AlterField(
            model_name='experimentinstance',
            name='data_status',
            field=models.CharField(blank=True, choices=[('n', 'Not deleted'), ('p', 'Pending deletion, correlated'), ('d', 'Deleted')], default='n', help_text='Data on module status', max_length=1),
        ),
    ]