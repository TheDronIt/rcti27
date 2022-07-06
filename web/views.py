from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect, HttpResponse, JsonResponse
from django.core.mail import send_mail
import datetime
import random
from .models import *

now = datetime.datetime.now()


def index__page(request):
	savefeedback(request)
	data = {
		'Banners': 		Banner.objects.all().order_by('-id'),
		'Services': 	Service.objects.filter(Show="Отображать").order_by('id'),
		'News':			News.objects.all().order_by('-id')[:2],
		'Requisites':	Requisites.objects.all()[:1],
	}
	return render(request, 'page/index.html', data)


def news__page(request):
	data = {
		'News':			News.objects.all(),
	}
	return render(request, 'page/news.html', data)


def about__page(request):
	data = {
		'Certificates': Certificate.objects.all()
	}
	return render(request, 'page/about.html', data)


def service_page__page(request, id):
	savefeedback(request)
	data = {
		'Service': 	Service.objects.get(id=id),
	}
	return render(request, 'page/service_page.html', data)


def news_page__page(request, id):
	savefeedback(request)
	data = {
		'News': News.objects.get(id=id),
	}
	return render(request, 'page/news_page.html', data)



def savefeedback(request):
	if request.method == "POST":
		if request.POST['button']:
			if request.POST['button'] == "Отправить":
				Name = request.POST['Name']
				Email = request.POST['Email']
				Phone = request.POST['Phone']
				Text = request.POST['Text']
				if len(Feedback.objects.filter(Name=Name).filter(Email=Email).filter(Phone=Phone).filter(Text=Text)) == 0:
					db = Feedback(Name=Name, Email=Email, Phone=Phone, Text=Text)
					db.save()
					mail = send_mail(
						'Новое сообщение: '+str(Name),
						'Имя: '+str(Name)+"\nТелефон: "+str(Phone)+"\nСообщение:\n"+str(Text),
						'rctikhv@yandex.ru',
						['rcti.khv@gmail.com'],
						fail_silently=False,
					)

				return redirect("/")



