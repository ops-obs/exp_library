# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-12-13 22:28
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0085_module_transit'),
    ]

    operations = [
        migrations.AlterField(
            model_name='module',
            name='transit',
            field=models.BooleanField(default=False, help_text='Is module currently in transit to location?'),
        ),
    ]
