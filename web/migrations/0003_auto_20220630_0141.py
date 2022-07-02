# Generated by Django 3.2.10 on 2022-06-29 15:41

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0002_service_show'),
    ]

    operations = [
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Title', models.CharField(max_length=50, verbose_name='Название')),
                ('Image', models.ImageField(upload_to='category/', verbose_name='Изображение')),
                ('About', models.TextField(blank=True, verbose_name='Описание')),
                ('Text', models.TextField(blank=True, verbose_name='Текст')),
                ('Date', models.DateField(blank=True, verbose_name='Дата')),
            ],
            options={
                'verbose_name': 'Новости',
                'verbose_name_plural': 'Новости',
            },
        ),
        migrations.AlterField(
            model_name='service',
            name='Image',
            field=models.FileField(blank=True, null=True, upload_to='service/', validators=[django.core.validators.FileExtensionValidator(allowed_extensions=['JPEG', 'JPG', 'GIF', 'PNG', 'APNG', 'SVG', 'BMP', 'ICO'])], verbose_name='Изображение'),
        ),
    ]