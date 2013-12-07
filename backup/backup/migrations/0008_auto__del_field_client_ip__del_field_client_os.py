# -*- coding: utf-8 -*-
from south.utils import datetime_utils as datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Deleting field 'Client.ip'
        db.delete_column(u'backup_client', 'ip')

        # Deleting field 'Client.os'
        db.delete_column(u'backup_client', 'os')


    def backwards(self, orm):
        # Adding field 'Client.ip'
        db.add_column(u'backup_client', 'ip',
                      self.gf('django.db.models.fields.IntegerField')(null=True, blank=True),
                      keep_default=False)

        # Adding field 'Client.os'
        db.add_column(u'backup_client', 'os',
                      self.gf('django.db.models.fields.CharField')(default='', max_length=64, blank=True),
                      keep_default=False)


    models = {
        u'backup.client': {
            'Meta': {'object_name': 'Client'},
            'created_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'}),
            'data': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'description': ('django.db.models.fields.CharField', [], {'max_length': '64', 'blank': 'True'}),
            'frequency': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['backup.Frequency']", 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'ip_address': ('django.db.models.fields.CharField', [], {'max_length': '15', 'blank': 'True'}),
            'location': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['backup.Location']", 'blank': 'True'}),
            'method': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['backup.Method']", 'blank': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '64'}),
            'schedule': ('django.db.models.fields.CharField', [], {'max_length': '64', 'blank': 'True'}),
            'shortname': ('django.db.models.fields.CharField', [], {'max_length': '64', 'blank': 'True'}),
            'updated_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'})
        },
        u'backup.filesets': {
            'Meta': {'object_name': 'Filesets'},
            'created_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'}),
            'fileset_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True'}),
            'fileset_name': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'}),
            'updated_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'})
        },
        u'backup.frequency': {
            'Meta': {'object_name': 'Frequency'},
            'created_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'}),
            'frequency_name': ('django.db.models.fields.CharField', [], {'max_length': '32'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'updated_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'})
        },
        u'backup.location': {
            'Meta': {'object_name': 'Location'},
            'created_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'location_desc': ('django.db.models.fields.CharField', [], {'max_length': '64', 'blank': 'True'}),
            'location_name': ('django.db.models.fields.CharField', [], {'max_length': '20'}),
            'updated_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'})
        },
        u'backup.method': {
            'Meta': {'object_name': 'Method'},
            'created_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'method_name': ('django.db.models.fields.CharField', [], {'max_length': '32'}),
            'updated_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'})
        },
        u'backup.pathnames': {
            'Meta': {'object_name': 'Pathnames'},
            'created_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'}),
            'fileset_id': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'path': ('django.db.models.fields.CharField', [], {'max_length': '254', 'blank': 'True'}),
            'updated_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'})
        }
    }

    complete_apps = ['backup']