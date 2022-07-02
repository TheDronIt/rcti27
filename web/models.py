from django.db import models
from django.contrib import admin
from django.core.validators import MaxValueValidator, MinValueValidator
from django.core.validators import FileExtensionValidator

class Banner(models.Model):
	class Meta:
		verbose_name = "Баннер"
		verbose_name_plural = "Баннер"

	Image = models.FileField(upload_to='banner/',null=True, blank=True, validators=[FileExtensionValidator(allowed_extensions=['JPEG','GIF','PNG','APNG','SVG','BMP','ICO'])], verbose_name="Изображение")
	Link = models.CharField(verbose_name="Ссылка", max_length=50, blank=True)

	def __str__(self):
		return str(self.id)


class Service(models.Model):
	class Meta:
		verbose_name = "Услуги"
		verbose_name_plural = "Услуги"

	Show_list = [
		("Отображать", "Отображать"),
		("Не отображать", "Не отображать")
	]

	Name = models.CharField(verbose_name="Название", max_length=50)
	Image = models.FileField(upload_to='service/',null=True, blank=True, validators=[FileExtensionValidator(allowed_extensions=['JPEG','JPG','GIF','PNG','APNG','SVG','BMP','ICO'])], verbose_name="Изображение")
	Description = models.TextField(blank=True, verbose_name="Описание")
	Show = models.CharField(max_length=50, choices=Show_list, default="Не отображать", verbose_name="Отображение")

	def __str__(self):
		return str(self.Name)


class News(models.Model):
	class Meta:
		verbose_name = 'Новости'
		verbose_name_plural = 'Новости'

	Title = models.CharField(verbose_name="Заголовок", max_length=50)
	Image = models.ImageField(verbose_name="Изображение", upload_to='news/')
	About = models.TextField(blank=True, verbose_name="Краткое описание")
	Text = models.TextField(blank=True, verbose_name="Текст")
	Date = models.DateField(verbose_name='Дата', blank=True)

	def __str__(self):
		return str(self.Title)


class Certificate(models.Model):
	class Meta:
		verbose_name = 'Сертификаты'
		verbose_name_plural = 'Сертификаты'

	Name = models.CharField(verbose_name="Название", max_length=50)
	File = models.FileField(upload_to='certificate/',null=True, verbose_name="Фаил")

	def __str__(self):
		return str(self.Name)

class Requisites(models.Model):
	class Meta:
		verbose_name = 'Реквизиты'
		verbose_name_plural = 'Реквизиты'

	File = models.FileField(upload_to='requisites/',null=True, verbose_name="Фаил")

	def __str__(self):
		return str(self.id)


class Feedback(models.Model):
	class Meta:
		verbose_name = 'Обратная связь'
		verbose_name_plural = 'Обратная связь'

	Name = models.CharField(verbose_name="Имя", max_length=50)
	Email = models.CharField(verbose_name="Почта", max_length=50)
	Phone = models.CharField(verbose_name="Телефон", max_length=50)
	Text = models.TextField(verbose_name="Сообщение")

	def __str__(self):
		return str(self.Name)