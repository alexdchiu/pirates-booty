# Generated by Django 4.0.3 on 2022-07-22 16:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='heart',
            field=models.BooleanField(default=False),
        ),
    ]
