# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-10-02 00:29
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0063_auto_20181001_0927'),
    ]

    operations = [
        migrations.AlterField(
            model_name='experimentinstance',
            name='data_status',
            field=models.CharField(blank=True, choices=[('n', 'Not deleted'), ('p', 'Pending deletion, correlated'), ('d', 'Deleted')], default='n', help_text='Data on module status', max_length=1, null=True),
        ),
    ]
