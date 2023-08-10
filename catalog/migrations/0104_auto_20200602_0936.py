# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2020-06-01 23:36
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0103_auto_20200325_1212'),
    ]

    operations = [
        migrations.AlterField(
            model_name='experimentinstance',
            name='station',
            field=models.CharField(blank=True, choices=[('ke', 'Katherine'), ('ho', 'Hobart26'), ('hb', 'Hobart12'), ('yg', 'Yarragadee'), ('cd', 'Ceduna'), ('ti', 'Tidbinbilla'), ('ya', 'Yamaguchi'), ('hi', 'Hitachi'), ('kb', 'Kashima'), ('ww', 'Warkworth')], help_text='Station two letter i.d.', max_length=2),
        ),
    ]