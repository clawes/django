# -*- coding: utf-8 -*-
from south.utils import datetime_utils as datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Deleting field 'Frequency.frequency_desc'
        db.delete_column(u'backup_frequency', 'frequency_desc')


    def backwards(self, orm):
        # Adding field 'Frequency.frequency_desc'
        db.add_column(u'backup_frequency', 'frequency_desc',
                      self.gf('django.db.models.fields.CharField')(default='', max_length=32, blank=True),
                      keep_default=False)


    models = {
        u'backup.client': {
            'Meta': {'object_name': 'Client'},
            'data': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'}),
            'description': ('django.db.models.fields.CharField', [], {'max_length': '64', 'blank': 'True'}),
            'entry_date': ('django.db.models.fields.DateTimeField', [], {}),
            'frequency_id': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['backup.Frequency']"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'ip': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'ip_address': ('django.db.models.fields.CharField', [], {'max_length': '15', 'blank': 'True'}),
            'last_update': ('django.db.models.fields.DateTimeField', [], {'null': 'True', 'blank': 'True'}),
            'location_id': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['backup.Location']"}),
            'method_id': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['backup.Methods']"}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '64'}),
            'os': ('django.db.models.fields.CharField', [], {'max_length': '64', 'blank': 'True'}),
            'schedule': ('django.db.models.fields.CharField', [], {'max_length': '64', 'blank': 'True'}),
            'shortname': ('django.db.models.fields.CharField', [], {'max_length': '64', 'blank': 'True'})
        },
        u'backup.filesets': {
            'Meta': {'object_name': 'Filesets'},
            'fileset_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True'}),
            'fileset_name': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'})
        },
        u'backup.frequency': {
            'Meta': {'object_name': 'Frequency'},
            'frequency_name': ('django.db.models.fields.CharField', [], {'max_length': '32'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'backup.location': {
            'Meta': {'object_name': 'Location'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'location_desc': ('django.db.models.fields.CharField', [], {'max_length': '64', 'blank': 'True'}),
            'location_name': ('django.db.models.fields.CharField', [], {'max_length': '20'})
        },
        u'backup.methods': {
            'Meta': {'object_name': 'Methods'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'method_name': ('django.db.models.fields.CharField', [], {'max_length': '32'})
        },
        u'backup.pathnames': {
            'Meta': {'object_name': 'Pathnames'},
            'fileset_id': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'path': ('django.db.models.fields.CharField', [], {'max_length': '254', 'blank': 'True'})
        }
    }

    complete_apps = ['backup']