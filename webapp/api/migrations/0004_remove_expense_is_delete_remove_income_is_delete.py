# Generated by Django 4.1.3 on 2023-03-05 09:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0003_alter_creditor_is_settled_alter_debtor_is_settled_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='expense',
            name='is_delete',
        ),
        migrations.RemoveField(
            model_name='income',
            name='is_delete',
        ),
    ]
