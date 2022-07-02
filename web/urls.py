from django.urls import include, path
from django.views.generic.base import TemplateView
from . import views

urlpatterns = [
    path('', views.index__page, name='home'),
    path('news', views.news__page),
    path('about', views.about__page),
    path('service/<int:id>', views.service_page__page),
    path('news/<int:id>', views.news_page__page),
    path('robots.txt', TemplateView.as_view(template_name="robots.txt", content_type="text/plain")),
    path('sitemap.xml', TemplateView.as_view(template_name="sitemap.xml", content_type="text/xml"))
    ]