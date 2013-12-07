# -*- coding: utf-8 -*-
from south.utils import datetime_utils as datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'Filesets.updated_on'
        db.add_column(u'backup_filesets', 'updated_on',
                      self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True),
                      keep_default=False)

        # Adding field 'Filesets.created_on'
        db.add_column(u'backup_filesets', 'created_on',
                      self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True),
                      keep_default=False)

        # Adding field 'Frequency.updated_on'
        db.add_column(u'backup_frequency', 'updated_on',
                      self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True),
                      keep_default=False)

        # Adding field 'Frequency.created_on'
        db.add_column(u'backup_frequency', 'created_on',
                      self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True),
                      keep_default=False)

        # Adding field 'Methods.updated_on'
        db.add_column(u'backup_methods', 'updated_on',
                      self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True),
                      keep_default=False)

        # Adding field 'Methods.created_on'
        db.add_column(u'backup_methods', 'created_on',
                      self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True),
                      keep_default=False)

        # Adding field 'Location.updated_on'
        db.add_column(u'backup_location', 'updated_on',
                      self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True),
                      keep_default=False)

        # Adding field 'Location.created_on'
        db.add_column(u'backup_location', 'created_on',
                      self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True),
                      keep_default=False)

        # Adding field 'Pathnames.updated_on'
        db.add_column(u'backup_pathnames', 'updated_on',
                      self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True),
                      keep_default=False)

        # Adding field 'Pathnames.created_on'
        db.add_column(u'backup_pathnames', 'created_on',
                      self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True),
                      keep_default=False)

        # Deleting field 'Client.last_update'
        db.delete_column(u'backup_client', 'last_update')

        # Deleting field 'Client.entry_date'
        db.delete_column(u'backup_client', 'entry_date')

        # Adding field 'Client.updated_on'
        db.add_column(u'backup_client', 'updated_on',
                      self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True),
                      keep_default=False)

        # Adding field 'Client.created_on'
        db.add_column(u'backup_client', 'created_on',
                      self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting field 'Filesets.updated_on'
        db.delete_column(u'backup_filesets', 'updated_on')

        # Deleting field 'Filesets.created_on'
        db.delete_column(u'backup_filesets', 'created_on')

        # Deleting field 'Frequency.updated_on'
        db.delete_column(u'backup_frequency', 'updated_on')

        # Deleting field 'Frequency.created_on'
        db.delete_column(u'backup_frequency', 'created_on')

        # Deleting field 'Methods.updated_on'
        db.delete_column(u'backup_methods', 'updated_on')

        # Deleting field 'Methods.created_on'
        db.delete_column(u'backup_methods', 'created_on')

        # Deleting field 'Location.updated_on'
        db.delete_column(u'backup_location', 'updated_on')

        # Deleting field 'Location.created_on'
        db.delete_column(u'backup_location', 'created_on')

        # Deleting field 'Pathnames.updated_on'
        db.delete_column(u'backup_pathnames', 'updated_on')

        # Deleting field 'Pathnames.created_on'
        db.delete_column(u'backup_pathnames', 'created_on')

        # Adding field 'Client.last_update'
        db.add_column(u'backup_client', 'last_update',
                      self.gf('django.db.models.fields.DateTimeField')(null=True, blank=True),
                      keep_default=False)

        # Adding field 'Client.entry_date'
        db.add_column(u'backup_client', 'entry_date',
                      self.gf('django.db.models.fields.DateTimeField')(default='2013-12-01 00:00:00'),
                      keep_default=False)

        # Deleting field 'Client.updated_on'
        db.delete_column(u'backup_client', 'updated_on')

        # Deleting field 'Client.created_on'
        db.delete_column(u'backup_client', 'created_on')


    models = {
        u'backup.client': {
            'Meta': {'object_name': 'Client'},
            'created_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'}),
            'data': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'}),
            'description': ('django.db.models.fields.CharField', [], {'max_length': '64', 'blank': 'True'}),
            'frequency_id': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['backup.Frequency']"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'ip': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'ip_address': ('django.db.models.fields.CharField', [], {'max_length': '15', 'blank': 'True'}),
            'location_id': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['backup.Location']"}),
            'method_id': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['backup.Methods']"}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '64'}),
            'os': ('django.db.models.fields.CharField', [], {'max_length': '64', 'blank': 'True'}),
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
        u'backup.methods': {
            'Meta': {'object_name': 'Methods'},
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