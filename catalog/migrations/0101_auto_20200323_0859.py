# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2020-03-22 21:59
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0100_auto_20200323_0857'),
    ]

    operations = [
        migrations.AlterField(
            model_name='raid',
            name='path',
            field=models.CharField(blank=True, help_text='file system path', max_length=100, null=True),
        ),
    ]
