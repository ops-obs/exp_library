from django.contrib import admin

# Register your models here.
from .models import Correlator, Type, Experiment, ExperimentInstance, Module, Storage, Raid




class ExperimentInstanceInline(admin.TabularInline):
    model = ExperimentInstance

class StorageInline(admin.TabularInline):
    model = Storage

#admin.site.register(Experiment)
# Define the admin class
class ExperimentAdmin(admin.ModelAdmin):
    list_display = ('name', 'correlator', 'schedate')
    inlines = [ExperimentInstanceInline]
    list_filter = ('correlator', 'correlation_status')
# Register the admin class with the associated model
admin.site.register(Experiment, ExperimentAdmin)
#admin.site.register(Correlator)
# Register the Admin classes for Correlator using the decorator

@admin.register(Correlator)
class CorrelatorAdmin(admin.ModelAdmin):
    inlines=[StorageInline]
    pass
#admin.site.register(Type)
# Register the Admin classes for Type using the decorator

@admin.register(Type)
class TypeAdmin(admin.ModelAdmin):
    pass
#admin.site.register(ExperimentInstance)
# Register the Admin classes for ExpimentInstance using the decorator

@admin.register(ExperimentInstance)
class ExperimentInstanceAdmin(admin.ModelAdmin):
    list_display = ('experiment', 'station',  'display_module', 'extract', 'display_corr', 'transfer','display_corr_status', 'data_status')
    #list_display = ('experiment', 'station',  'display_module', 'module_to_raid', 'transfer_to_correlator','display_corr_status', 'data_status')
    list_filter = ('transfer','data_status','station')
#admin.site.register(Storage)
# Register the Admin classes for Storage using the decorator

@admin.register(Storage)
class StorageAdmin(admin.ModelAdmin):
    list_display=('display_corr_name', 'server_name','ip','port')
    pass
#admin.site.register(Raid)

## Register the Admin classes for Raid using the decorator

@admin.register(Raid)
class RaidAdmin(admin.ModelAdmin):
    pass

#admin.site.register(Module)
## Register the Admin classes for Module using the decorator

@admin.register(Module)
class ModuleAdmin(admin.ModelAdmin):
    list_display = ('vsn' , 'size', 'free', 'empty','display_experiments','modified')
    list_filter = ('location',)
###    formfield_overrides = { models.ManyToManyField: {'widget': SelectMultiple(attrs={'size':'20'})}, }### attempt to modify widget!!!
    pass

