# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-11-27 01:49
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0082_auto_20181122_1712'),
    ]

    operations = [
        migrations.AlterField(
            model_name='module',
            name='vsn',
            field=models.CharField(help_text='8 character Volume Serial Number', max_length=8, primary_key=True, serialize=False, unique=True),
        ),
    ]