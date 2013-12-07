from django.contrib import admin
from backup.models import Location
from backup.models import Client
from backup.models import Frequency
from backup.models import Method

class LocationAdmin(admin.ModelAdmin):
	fields = ['location_name','location_desc']
	list_display = ('location_name', 'location_desc')

admin.site.register(Client)
admin.site.register(Location)
admin.site.register(Method)
admin.site.register(Frequency)
