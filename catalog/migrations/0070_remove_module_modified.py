# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-10-10 02:10
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0069_auto_20181010_1258'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='module',
            name='modified',
        ),
    ]
