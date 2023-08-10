from django.shortcuts import render
from django.db.models import F
import datetime as dt
from django.db.models.functions import (ExtractYear,ExtractMonth,)
#from catalog.forms import AllocateForm
from django.shortcuts import get_object_or_404
# Create your views here.
from .models import Experiment, ExperimentInstance, Correlator, Type, Module

def index(request):
    """
    View function for home page of site.
    """
    # Generate counts of some of the main objects

    num_exps=Experiment.objects.all().count() ## all experiments ever recorded in database
    num_instances=ExperimentInstance.objects.all().count()  ## number recording instances
    ##  number pending extraction module to raid   
    mod_raid_pend=ExperimentInstance.objects.filter(extract__exact='p').count()
    ## number to be copied to hobart storage
    hob_pend=ExperimentInstance.objects.filter(hobart__exact='p').count()
    raid_corr_pend=ExperimentInstance.objects.filter(transfer__exact='p').count()  ### number pending upload to corrrelator
    del_corr_pend=ExperimentInstance.objects.filter(data_status__exact='p').count()  ## correlated, pending deletion from archive
    num_archive=ExperimentInstance.objects.filter(data_status__exact='n').count()  ## experiments stored in module archive
    num_mods=Module.objects.count()  # The 'all()' is implied by default
    ke_mods=Module.objects.filter(location__exact='ke').count()
    ho_mods=Module.objects.filter(location__exact='ho').count()
    cd_mods=Module.objects.filter(location__exact='cd').count()
    yg_mods=Module.objects.filter(location__exact='yg').count()
    ti_mods=Module.objects.filter(location__exact='ti').count()
    wn_mods=Module.objects.filter(location__exact='wn').count()
     #### empty modules
    free_mods=Module.objects.annotate(space=(F('size')-F('free')))
    free_mods=free_mods.filter(space__lt=10).count()-Module.objects.filter(location__exact='wn').count()
    #### following appears to do the same as above???
    #free_mods=free_mods.filter(space__exact=0).count()+free_mods.filter(space__lt=0).filter(space__gt=-10).count()+free_mods.filter(space__gt=0).filter(space__lt=10).count()
    ### for the table in index template
    week=dt.date.today()+dt.timedelta(days=7)
    inst_p_mod=ExperimentInstance.objects.filter(extract__exact='p').filter(experiment__schedate__lte=week).order_by('experiment__schedate')
    inst_p_mod_ho=ExperimentInstance.objects.filter(extract__exact='p').filter(station__in=['hb','ho','ti']).filter(experiment__schedate__lte=week).order_by('experiment__schedate')
    inst_p_mod_yg=ExperimentInstance.objects.filter(extract__exact='p').filter(station__exact='yg').filter(experiment__schedate__lte=week).order_by('experiment__schedate')
    inst_p_mod_cd=ExperimentInstance.objects.filter(extract__exact='p').filter(station__exact='cd').filter(experiment__schedate__lte=week).order_by('experiment__schedate')
    inst_p_mod_ke=ExperimentInstance.objects.filter(extract__exact='p').filter(station__exact='ke').filter(experiment__schedate__lte=week).order_by('experiment__schedate')
    inst_c_mod=ExperimentInstance.objects.filter(extract__exact='c')
    inst_p_corr=ExperimentInstance.objects.filter(transfer__exact='p').filter(hobart__exact='u').filter(extract__exact='u')
    inst_c_corr=ExperimentInstance.objects.filter(transfer__exact='c')
    inst_c_hob=ExperimentInstance.objects.filter(hobart__exact='c')
    inst_p_del=ExperimentInstance.objects.filter(data_status__exact='p')
    inst_p_hob=ExperimentInstance.objects.filter(hobart__exact='p').filter(extract__exact='u').filter(experiment__schedate__lte=week).order_by('experiment__schedate')
    mod_ship=Module.objects.filter(transit=True).count()
    mod_fail=Module.objects.filter(location__exact='ff').count()
    #modules_available = Module.objects.filter(empty='True').count()
    # Render the HTML template index.html with the data in the context variable
    return render(
        request,
        'index.html',
        context={'num_exps':num_exps,'num_instances':num_instances,'mod_raid_pend':mod_raid_pend,'hob_pend':hob_pend,'hob':inst_p_hob,'cphob':inst_c_hob,
        'raid_corr_pend':raid_corr_pend,'num_mods':num_mods,'free_mods':free_mods, 'del_corr_pend':del_corr_pend,'num_archive':num_archive,
        'mod':inst_p_mod,'modh':inst_p_mod_ho,'mody':inst_p_mod_yg,'modk':inst_p_mod_ke,'modc':inst_p_mod_cd,'corr':inst_p_corr,'del':inst_p_del,'extract':inst_c_mod, 'transfer':inst_c_corr, 'ke_mods':ke_mods, 'yg_mods':yg_mods, 
        'ho_mods':ho_mods, 'cd_mods':cd_mods, 'ti_mods':ti_mods, 'wn_mods':wn_mods, 'transit':mod_ship,'fail':mod_fail },
        )
### view function for transfers list

def transfers(request):
    week=dt.date.today()+dt.timedelta(days=7)
    inst_c_mod=ExperimentInstance.objects.filter(extract__exact='c')
    inst_c_hob=ExperimentInstance.objects.filter(hobart__exact='c')
    inst_c_corr=ExperimentInstance.objects.filter(transfer__exact='c')
    inst_p_hob=ExperimentInstance.objects.filter(hobart__exact='p').filter(extract__exact='u').filter(experiment__schedate__lte=week).order_by('experiment__schedate')
    inst_p_del=ExperimentInstance.objects.filter(data_status__exact='p')
    hob_pend=ExperimentInstance.objects.filter(hobart__exact='p').count()
    inst_p_corr=ExperimentInstance.objects.filter(transfer__exact='p').filter(hobart__exact='u').filter(extract__exact='u')
    return render(
        request,
        'transfers.html',
        context={'cphob':inst_c_hob,'corr':inst_p_corr,'del':inst_p_del,'extract':inst_c_mod,'transfer':inst_c_corr,'hob_pend':hob_pend,'hob':inst_p_hob},
        )


from django.views import generic

class ExperimentListView(generic.ListView):
    model=Experiment
    queryset=Experiment.objects.order_by(ExtractYear('schedate'),ExtractMonth('schedate'))
    ordering = ['-schedate']
    #paginate_by = 35

    #def get_queryset(self):
    #    query = self.request.GET.get("q")
    #    object_list = Experiment.objects.filter(name__icontains=query)
    #    return object_list

class ExperimentSearchView(generic.ListView):
    model=Experiment 
    queryset=Experiment.objects.order_by(ExtractYear('schedate'),ExtractMonth('schedate'))
    ordering = ['-schedate']
    def get_queryset(self):
        query = self.request.GET.get("q")
        object_list = Experiment.objects.filter(name__icontains=query)
        return object_list


class ExperimentDetailView(generic.DetailView):
    model=Experiment

class CorrelatorListView(generic.ListView):
    model = Correlator

class CorrelatorDetailView(generic.DetailView):
    model = Correlator

class ModuleListView(generic.ListView):
    model = Module
    #### modified to filter by location (set in sidebar)
    def get_queryset(self):
        queryset = super(ModuleListView, self).get_queryset()
        # get query value of query parameter 'location'
        location = self.request.GET.get('location', None)

        if location:
            # if location is given (sidebar click) then filter
            return queryset.filter(location__exact=location).order_by('size')
        # if location is not given then return all
        return queryset.order_by('size')


class ModuleDetailView(generic.DetailView):
    model = Module
   
#### module shipping form

from django.contrib.auth.decorators import permission_required
from django.shortcuts import render, redirect
from django.views.generic.edit  import UpdateView, CreateView, DeleteView


#from django_filters import FilterSet

#from .forms import ExperimentInstanceForm

#@permission_required('catalog.can_ship')
class ModuleShip(UpdateView):
    """View function for updating  a specific Module by a station."""
    model = Module
    fields = ['location','ship','transit']


class ModuleExperiment(UpdateView):
    """View function for updating (allocating)  a specific Module by a station."""

    model = ExperimentInstance
    fields=['module']
    
    #####  make form only show modules located at station

    def get_form(self, form_class=None):
        form = super(ModuleExperiment, self).get_form(form_class)
        ### hb is at same location as ho
        if self.object.station=='hb':
            place='ho'
        else:
            place=self.object.station
        data=self.object.sched_size
        #####  filter for correct size module ????? too hard if dat = sched_size not set correctly or is None or module free not set correctly!!! 
        #if data is not None:
        #    form.fields['module'].queryset = Module.objects.filter(location__exact=place).exclude(free__lt=data)
        #else:
        #    pass
        
        form.fields['module'].queryset = Module.objects.filter(location__exact=place)
        return form

class ModuleMake(CreateView):
    """View function for creating  a specific Module by a station."""
    model = Module
    fields = ['vsn','size','location'] 
