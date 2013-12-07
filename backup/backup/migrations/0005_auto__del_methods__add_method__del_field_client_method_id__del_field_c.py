# -*- coding: utf-8 -*-
from south.utils import datetime_utils as datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Deleting model 'Methods'
        db.delete_table(u'backup_methods')

        # Adding model 'Method'
        db.create_table(u'backup_method', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('method_name', self.gf('django.db.models.fields.CharField')(max_length=32)),
            ('updated_on', self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True)),
            ('created_on', self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True)),
        ))
        db.send_create_signal(u'backup', ['Method'])

        # Deleting field 'Client.method_id'
        db.delete_column(u'backup_client', 'method_id_id')

        # Deleting field 'Client.frequency_id'
        db.delete_column(u'backup_client', 'frequency_id_id')

        # Deleting field 'Client.location_id'
        db.delete_column(u'backup_client', 'location_id_id')

        # Adding field 'Client.location'
        db.add_column(u'backup_client', 'location',
                      self.gf('django.db.models.fields.related.ForeignKey')(default=4, to=orm['backup.Location']),
                      keep_default=False)

        # Adding field 'Client.frequency'
        db.add_column(u'backup_client', 'frequency',
                      self.gf('django.db.models.fields.related.ForeignKey')(default=2, to=orm['backup.Frequency']),
                      keep_default=False)

        # Adding field 'Client.method'
        db.add_column(u'backup_client', 'method',
                      self.gf('django.db.models.fields.related.ForeignKey')(default=2, to=orm['backup.Method']),
                      keep_default=False)


    def backwards(self, orm):
        # Adding model 'Methods'
        db.create_table(u'backup_methods', (
            ('method_name', self.gf('django.db.models.fields.CharField')(max_length=32)),
            ('updated_on', self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True)),
            ('created_on', self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime.now, auto_now_add=True, blank=True)),
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
        ))
        db.send_create_signal(u'backup', ['Methods'])

        # Deleting model 'Method'
        db.delete_table(u'backup_method')

        # Adding field 'Client.method_id'
        db.add_column(u'backup_client', 'method_id',
                      self.gf('django.db.models.fields.related.ForeignKey')(default=3, to=orm['backup.Methods']),
                      keep_default=False)

        # Adding field 'Client.frequency_id'
        db.add_column(u'backup_client', 'frequency_id',
                      self.gf('django.db.models.fields.related.ForeignKey')(default=1, to=orm['backup.Frequency']),
                      keep_default=False)

        # Adding field 'Client.location_id'
        db.add_column(u'backup_client', 'location_id',
                      self.gf('django.db.models.fields.related.ForeignKey')(default=2, to=orm['backup.Location']),
                      keep_default=False)

        # Deleting field 'Client.location'
        db.delete_column(u'backup_client', 'location_id')

        # Deleting field 'Client.frequency'
        db.delete_column(u'backup_client', 'frequency_id')

        # Deleting field 'Client.method'
        db.delete_column(u'backup_client', 'method_id')


    models = {
        u'backup.client': {
            'Meta': {'object_name': 'Client'},
            'created_on': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now', 'auto_now_add': 'True', 'blank': 'True'}),
            'data': ('django.db.models.fields.CharField', [], {'max_length': '128', 'blank': 'True'}),
            'description': ('django.db.models.fields.CharField', [], {'max_length': '64', 'blank': 'True'}),
            'frequency': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['backup.Frequency']"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'ip': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'ip_address': ('django.db.models.fields.CharField', [], {'max_length': '15', 'blank': 'True'}),
            'location': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['backup.Location']"}),
            'method': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['backup.Method']"}),
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