# Generated by Django 3.1 on 2020-09-17 11:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('leave', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='employee',
            name='resign_reason',
            field=models.CharField(blank=True, max_length=300, null=True),
        ),
        migrations.AlterField(
            model_name='employee',
            name='resign_type',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]
