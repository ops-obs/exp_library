# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-09-05 02:22
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0034_auto_20170905_1130'),
    ]

    operations = [
        migrations.RenameField(
            model_name='storage',
            old_name='server',
            new_name='server_name',
        ),
        migrations.RemoveField(
            model_name='correlator',
            name='storage',
        ),
        migrations.AddField(
            model_name='storage',
            name='correlator',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='catalog.Correlator'),
        ),
    ]
