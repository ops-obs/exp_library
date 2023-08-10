# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-06-01 06:04
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0007_auto_20170601_1542'),
    ]

    operations = [
        migrations.AddField(
            model_name='expinstance',
            name='rec_size',
            field=models.IntegerField(help_text='Recorded experiment data GB', null=True),
        ),
        migrations.AddField(
            model_name='expinstance',
            name='sched_size',
            field=models.IntegerField(help_text='Scheduled experiment data GB', null=True),
        ),
    ]