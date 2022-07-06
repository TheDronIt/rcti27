from django.contrib import admin
from django.contrib.admin.widgets import FilteredSelectMultiple
from .models import *
from django import forms
from ckeditor_uploader.widgets import CKEditorUploadingWidget

class ServiceAdminForm(forms.ModelForm):
    Description = forms.CharField(widget=CKEditorUploadingWidget())
    class Meta:
        model = Service
        fields = '__all__'

class ServiceAdmin(admin.ModelAdmin):
    form = ServiceAdminForm


class NewsAdminForm(forms.ModelForm):
    Text = forms.CharField(widget=CKEditorUploadingWidget())
    class Meta:
        model = News
        fields = '__all__'

class NewsAdmin(admin.ModelAdmin):
    form = NewsAdminForm


admin.site.register(Banner)
admin.site.register(Service, ServiceAdmin)
admin.site.register(News, NewsAdmin)
admin.site.register(Certificate)
admin.site.register(Requisites)
admin.site.register(Feedback)