# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-06-02 04:12
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0011_auto_20170602_1406'),
    ]

    operations = [
        migrations.RenameField(
            model_name='expinstance',
            old_name='name',
            new_name='experiment',
        ),
    ]
