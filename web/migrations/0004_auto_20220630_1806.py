# Generated by Django 3.2.10 on 2022-06-30 08:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0003_auto_20220630_0141'),
    ]

    operations = [
        migrations.CreateModel(
            name='Certificate',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Name', models.CharField(max_length=50, verbose_name='Название')),
                ('File', models.FileField(null=True, upload_to='certificate/', verbose_name='Фаил')),
            ],
            options={
                'verbose_name': 'Сертификаты',
                'verbose_name_plural': 'Сертификаты',
            },
        ),
        migrations.AlterField(
            model_name='news',
            name='About',
            field=models.TextField(blank=True, verbose_name='Краткое описание'),
        ),
        migrations.AlterField(
            model_name='news',
            name='Image',
            field=models.ImageField(upload_to='news/', verbose_name='Изображение'),
        ),
        migrations.AlterField(
            model_name='news',
            name='Title',
            field=models.CharField(max_length=50, verbose_name='Заголовок'),
        ),
    ]