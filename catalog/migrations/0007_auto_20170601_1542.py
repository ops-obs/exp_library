# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-06-01 05:42
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0006_auto_20170601_1508'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='raid',
            name='port',
        ),
        migrations.AlterField(
            model_name='raid',
            name='location',
            field=models.CharField(help_text='IP address:/path', max_length=100),
        ),
    ]
