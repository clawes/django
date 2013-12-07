# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = True` lines for those models you wish to give write DB access
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.
from __future__ import unicode_literals
import datetime
from django.utils import timezone

from django.db import models

class Fileset(models.Model):
##    fileset_id = models.IntegerField(primary_key=True)
    fileset_name = models.CharField(max_length=128, blank=True)
    fileset_desc = models.CharField(max_length=128, blank=True)
    updated_on = models.DateTimeField(auto_now_add=True,default=datetime.datetime.now)
    created_on = models.DateTimeField(auto_now_add=True,default=datetime.datetime.now)

    def __unicode__(self):  # Python 3: def __str__(self):
                 return self.fileset_name


class Frequency(models.Model):
    frequency_name = models.CharField(max_length=32)
    frequency_desc = models.CharField(max_length=32, blank=True)
    updated_on = models.DateTimeField(auto_now_add=True,default=datetime.datetime.now)
    created_on = models.DateTimeField(auto_now_add=True,default=datetime.datetime.now)

    def __unicode__(self):  # Python 3: def __str__(self):
        return self.frequency_name

    class Meta(object):
        verbose_name_plural = "Frequency"

class Location(models.Model):
    location_name = models.CharField(max_length=20)
    location_desc = models.CharField(max_length=64, blank=True)
    updated_on = models.DateTimeField(auto_now_add=True,default=datetime.datetime.now)
    created_on = models.DateTimeField(auto_now_add=True,default=datetime.datetime.now)

    def __unicode__(self):  # Python 3: def __str__(self):
	return self.location_name

class Method(models.Model):
    method_name = models.CharField(max_length=32)
    updated_on = models.DateTimeField(auto_now_add=True,default=datetime.datetime.now)
    created_on = models.DateTimeField(auto_now_add=True,default=datetime.datetime.now)

    def __unicode__(self):  # Python 3: def __str__(self):
        return self.method_name

class Pathname(models.Model):
    path = models.CharField(max_length=254, blank=True)
    fileset = models.ForeignKey(Fileset,blank=True)
    updated_on = models.DateTimeField(auto_now_add=True,default=datetime.datetime.now)
    created_on = models.DateTimeField(auto_now_add=True,default=datetime.datetime.now)

class Client(models.Model):
    name = models.CharField(max_length=64)
    shortname = models.CharField(max_length=64, blank=True)
    description = models.CharField(max_length=64, blank=True)
    ip_address = models.CharField(max_length=15, blank=True)
    location = models.ForeignKey(Location, editable=True,blank=True)
    frequency = models.ForeignKey(Frequency, editable=True, blank=True)
#    schedule = models.CharField(max_length=64, blank=True)
    method = models.ForeignKey(Method, editable=True, blank=True)
    fileset = models.ForeignKey(Fileset, editable=True, blank=True)
    data = models.TextField(blank=True)
    updated_on = models.DateTimeField(auto_now_add=True,default=datetime.datetime.now)
    created_on = models.DateTimeField(auto_now_add=True,default=datetime.datetime.now)

    def __unicode__(self):  # Python 3: def __str__(self):
        return "%s  %s" % (self.shortname, self.method)
