# -*- coding: utf-8 -*-
from south.utils import datetime_utils as datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Filesets'
        db.create_table(u'backup_filesets', (
            ('fileset_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True)),
            ('fileset_name', self.gf('django.db.models.fields.CharField')(max_length=128, blank=True)),
        ))
        db.send_create_signal(u'backup', ['Filesets'])

        # Adding model 'Frequency'
        db.create_table(u'backup_frequency', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('frequency_name', self.gf('django.db.models.fields.CharField')(max_length=32)),
        ))
        db.send_create_signal(u'backup', ['Frequency'])

        # Adding model 'Location'
        db.create_table(u'backup_location', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('location_name', self.gf('django.db.models.fields.CharField')(max_length=20)),
            ('location_desc', self.gf('django.db.models.fields.CharField')(max_length=64, blank=True)),
        ))
        db.send_create_signal(u'backup', ['Location'])

        # Adding model 'Methods'
        db.create_table(u'backup_methods', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('method_name', self.gf('django.db.models.fields.CharField')(max_length=32)),
        ))
        db.send_create_signal(u'backup', ['Methods'])

        # Adding model 'Pathnames'
        db.create_table(u'backup_pathnames', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('fileset_id', self.gf('django.db.models.fields.IntegerField')(null=True, blank=True)),
            ('path', self.gf('django.db.models.fields.CharField')(max_length=254, blank=True)),
        ))
        db.send_create_signal(u'backup', ['Pathnames'])

        # Adding model 'Client'
        db.create_table(u'backup_client', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=64)),
            ('shortname', self.gf('django.db.models.fields.CharField')(max_length=64, blank=True)),
            ('description', self.gf('django.db.models.fields.CharField')(max_length=64, blank=True)),
            ('ip_address', self.gf('django.db.models.fields.CharField')(max_length=15, blank=True)),
            ('ip', self.gf('django.db.models.fields.IntegerField')(null=True, blank=True)),
            ('location_id', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['backup.Location'])),
            ('frequency_id', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['backup.Frequency'])),
            ('schedule', self.gf('django.db.models.fields.CharField')(max_length=64, blank=True)),
            ('method_id', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['backup.Methods'])),
            ('data', self.gf('django.db.models.fields.CharField')(max_length=128, blank=True)),
            ('os', self.gf('django.db.models.fields.CharField')(max_length=64, blank=True)),
            ('last_update', self.gf('django.db.models.fields.DateTimeField')(null=True, blank=True)),
            ('entry_date', self.gf('django.db.models.fields.DateTimeField')()),
        ))
        db.send_create_signal(u'backup', ['Client'])


    def backwards(self, orm):
        # Deleting model 'Filesets'
        db.delete_table(u'backup_filesets')

        # Deleting model 'Frequency'
        db.delete_table(u'backup_frequency')

        # Deleting model 'Location'
        db.delete_table(u'backup_location')

        # Deleting model 'Methods'
        db.delete_table(u'backup_methods')

        # Deleting model 'Pathnames'
        db.delete_table(u'backup_pathnames')

        # Deleting model 'Client'
        db.delete_table(u'backup_client')


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