# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-06-01 03:49
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import uuid


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Correlator',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(choices=[('BONN', 'Bonn'), ('HAYS', 'Haystack'), ('WASH', 'Washington'), ('SHAO', 'Shanghai'), ('VLBA', 'VLBA'), ('GSI', 'Geoscience Institute')], max_length=4)),
            ],
        ),
        migrations.CreateModel(
            name='Experiment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=6)),
                ('schedate', models.DateField(blank=True, null=True)),
                ('correlator', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='catalog.Correlator')),
            ],
        ),
        migrations.CreateModel(
            name='ExpInstance',
            fields=[
                ('id', models.UUIDField(default=uuid.uuid4, help_text='Experiment name plus station I.D. e.g. r1794hb', primary_key=True, serialize=False)),
                ('recorded', models.DateField(blank=True, null=True)),
                ('station', models.CharField(blank=True, choices=[('ke', 'Katherine'), ('ho', 'Hobart26'), ('hb', 'Hobart12'), ('yg', 'Yarragadee')], default='hb', help_text='Station two letter i.d.', max_length=2)),
                ('mod_status', models.CharField(blank=True, choices=[('p', 'Pending copy'), ('c', 'Copying'), ('u', 'Uploaded'), ('f', 'Failed')], default='p', help_text='Module upload to raid status', max_length=1)),
                ('transfer_status', models.CharField(blank=True, choices=[('p', 'Pending'), ('c', 'Copying'), ('u', 'Uploaded'), ('f', 'Failed')], default='p', help_text='Transfer to correlator status', max_length=1)),
                ('data_status', models.CharField(blank=True, choices=[('n', 'Not deleted'), ('p', 'Pending, correlated'), ('d', 'Deleted')], default='n', help_text='Data on module status', max_length=1)),
                ('experiment', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='catalog.Experiment')),
            ],
            options={
                'ordering': ['recorded'],
            },
        ),
        migrations.CreateModel(
            name='Storage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('location', models.CharField(help_text='IP address', max_length=100)),
                ('port', models.CharField(help_text='Port number', max_length=100)),
                ('freespace', models.CharField(help_text='Available space in TB', max_length=100)),
                ('transferrate', models.CharField(help_text='Available transfer bandwidth', max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Type',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Enter experiment type (e.g. rapid, radioastron, austral)', max_length=200)),
            ],
        ),
        migrations.AddField(
            model_name='experiment',
            name='type',
            field=models.OneToOneField(help_text='Select a type for this experiment', on_delete=django.db.models.deletion.CASCADE, to='catalog.Type'),
        ),
        migrations.AddField(
            model_name='correlator',
            name='storage',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='catalog.Storage'),
        ),
    ]
