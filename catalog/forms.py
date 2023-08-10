from django import forms
from django.core.exceptions import ValidationError
from django.utils.translation import ugettext_lazy as _

#class ModuleForm(forms.Form):
#    shipping_reference = forms.CharField(help_text="Enter shipping reference")

#    def clean_shiping_reference(self):
#        data = self.cleaned_data['shipping_reference']
#        return data
from django.forms import ModelForm
from catalog.models import Module, ExperimentInstance

class ModuleForm(ModelForm):
    def clean_ship_ref(self):
        data = self.cleaned_data['ship']
        return data


    class Meta:
        model=Module
        exclude  = ['vsn','size',]

#class AllocateForm(forms.ModelForm):
#
#    model = ExperimentInstance
#    fields = ('module')
#    def __init__(self,  *args, **kwargs):
#        self.current_station=kwargs.pop('station')
#        super(ExperimentInstanceForm, self)._init_(*args, **kwargs)
#        if self.current_station:
#            self.fields['module'].queryset = Module.objects.filter(location=self.current_station)

class ExperimentListForm(forms.Form):
    post = forms.CharField()

class AllocateCreateForm(forms.ModelForm):

    model = ExperimentInstance
    fields = ['module',]

    def __init__(self, *args, **kwargs):
        place = self.model('station')
        super(AllocateCreateForm, self).__init__(*args, **kwargs)
        if self.place:
            self.fields['module'].queryset = Module.objects.filter(location=self.place)
