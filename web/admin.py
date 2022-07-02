from django.contrib import admin
from django.contrib.admin.widgets import FilteredSelectMultiple
from django.utils.translation import ugettext_lazy as _
from .models import *


admin.site.register(Banner)
admin.site.register(Service)
admin.site.register(News)
admin.site.register(Certificate)
admin.site.register(Requisites)
admin.site.register(Feedback)