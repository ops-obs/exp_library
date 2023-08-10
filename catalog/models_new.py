from djan
go.db import models
from django.forms import ModelForm
# Create your models here.
# if you edit here and migration fails then delete migration (created by makemigrations) in catalog/migrations 

class Scan(models.Model)
    """
    Model represents individual scan friom experiment (station) instance
    """
    instance = models.ForeignKey('ExperimentInstance', on_delete=models.SET_NULL, null=True)
    scan = models.CharField(max_length=6, primary_key=True, unique=True)
    tx = models.BooleanField(default=False)


class Type(models.Model):
    """
    Model representing an experiment type(e.g. rapid, radioastron, austral, r&d).
    """



    TYPES = (
	('rivs' , 'Rapid IVS'),
	('ivs', 'IVS'),
	('ra' , 'Radioastron'),
	('aus', 'Austral'),
        ('lba', 'LBA'),
	('cont', 'CONT'),
        ('spi','Spirals'),
    )

    name = models.CharField(max_length=4, choices = TYPES,  help_text = "Enter experiment type (e.g. rapid, radioastron, austral)", primary_key=True)
    
    def __str__(self):
        """
        String for representing the Model object (in Admin site etc.)
        """
        return self.name

from django.urls import reverse #Used to generate URLs by reversing the URL patterns

class Experiment(models.Model):
    """
    Model representing an experiment (but not a specific recording of experiment).
    """
    name = models.CharField(max_length=6, primary_key=True, unique=True)
    correlator = models.ForeignKey('Correlator', on_delete=models.SET_NULL, null=True)
    # Foreign Key used because experiment can only have one correlator, but correlator can have multiple experiments
    correlation_status = models.BooleanField(default=False)
    # Correlator as a string rather than object because it hasn't been declared yet in the file.
    schedate = models.DateField(null=True, blank=True)
    type = models.ForeignKey(Type, help_text="Select a type for this experiment", null=True, blank=True)
    # ManyToManyField used because genre can contain many books. Books can cover many genres.
    # Type class has already been defined so we can specify the object above.
    
    def display_corr(self):
        """
        Creates a string for the correlator. This is required to display correlator in Admin list.
        """
        return '%s ' %(self.correlator)
    display_corr.short_description = 'Correlator'



    def __str__(self):
        """
        String for representing the Model object.
        """
        return self.name

    class Meta:
        ordering=['schedate']    
    
    def get_absolute_url(self):
        """
        Returns the url to access a particular experiment instance.
        """
        return reverse('experiment-detail', args=[str(self.name)])


class ExperimentInstance(models.Model):
    """
    Model representing a station recording of an experiment.
    """


#    id = models.CharField(max_length=10, primary_key=True,  default= id_str )
    experiment = models.ForeignKey('Experiment', on_delete=models.SET_NULL, null=True) 
    recorded = models.DateField(null=True, blank=True)
    scans = models.IntegerField(null=True, blank=True)
    sched_size = models.IntegerField(null=True, blank=True, help_text="Scheduled experiment data GB")
    rec_size = models.IntegerField( null=True,blank=True, help_text="Recorded experiment data GB")
    module  = models.ManyToManyField('Module', help_text="Module vsn", blank=True)
    path = models.CharField(max_length=256, blank=True, null=True,  help_text='path on local Hobart store raid (see raid column)')

    STATION = (
        ('ke', 'Katherine'),
        ('ho', 'Hobart26'),
        ('hb', 'Hobart12'),
        ('yg', 'Yarragadee'),
	('cd', 'Ceduna'),
	('td', 'Tidbinbilla'),
        ('ya', 'Yamaguchi'),
        ('hi', 'Hitachi'),
        ('kb', 'Kashima'),
        ('wa', 'Warkworth')
    )
    MODULE = (
        ('p', 'Pending copy'),
        ('c', 'Copying'),
	('u', 'Uploaded'),
        ('f', 'Failed'),
    )
    TRANSFER = (
        ('p', 'Pending'),
        ('c', 'Copying'),
        ('u', 'Uploaded'),
        ('f', 'Failed'),
    )
    DATA = (
        ('n', 'Not deleted'),
        ('p', 'Pending deletion, correlated'),
        ('d', 'Deleted'),
    )


    station = models.CharField(max_length=2, choices=STATION, blank=True, help_text='Station two letter i.d.')
   

    """"  
    """" represents extraction of recording from module , or flexbuff recording to media"""
    extract = models.CharField(max_length=1, choices=MODULE, blank=True, default='p',  help_text='Recording has been copied')
    
    """" represents copy to  Hobart storages. If extract  is directly to Hobart then check this one at the same time"""
    hobart = models.CharField(max_length=1, choices=TRANSFER, default='p',  help_text='Transferred to Hobart storage')

    """ flexbuff is itself, both like a module (recording medium) and a RAID for storage """
    raid = models.ForeignKey('Raid', on_delete=models.SET_NULL, null=True, blank=True)    
    
    """ represents transfer to remote or local (Hobart) correlator """
    transfer = models.CharField(max_length=1, choices=TRANSFER, default='p',  help_text='Transfer to correlator status')

    data_status = models.CharField(max_length=1, choices=DATA, blank=True, default='n',  help_text='Data on module status')

    ship_to = models.CharField(max_length=24, blank=True, null=True, default='Hobart',  help_text='Ship module to this location once recorded')
    
    def display_date(self):
        """
        Creates a string for the experiment date. This is required to display date in home page.
        """
        return '%s' % (self.experiment.schedate.strftime('%d %b'))
    display_date.short_description = 'experiment date'


    
    def display_module(self):
        """
        Creates a string for the module/s. This is required to display modules in Admin list.
        """
        return ', '.join([ module.vsn for module in self.module.all()[:3] ])
    display_module.short_description = 'Module'

    def display_module_size(self):
        """
        Creates a string for the module/s size. This is required to display module size  in Admin and experiment  list.
        """
        return ', '.join([ str(module.size) for module in self.module.all()[:3] ])
    display_module_size.short_description = 'Module Size'
    def display_module_free(self):
        """
        Creates a string for the module/s free size. This is required to display module free size  in Admin and experiment  list.
        """
        return ', '.join([ str(module.free) for module in self.module.all()[:3] ])
    display_module_free.short_description = 'Free Space'

    def display_module_loc(self):
        """
        Creates a string for the module/s location. This is required to display module location  in Admin and experiment  list.
        """
        return ', '.join([ str(module.location) for module in self.module.all()[:3] ])
    display_module_loc.short_description = 'Module Location'

    def display_corr(self):
        """
        Creates a string for the correlator. This is required to display correlator in Admin list.
        """
        return '%s ' %(self.experiment.correlator)
    display_corr.short_description = 'Correlator'
    def display_corr_status(self):
        """
        Creates a string for the corr_status. This is required to display corr_staus in Admin.
        """
        return '%s' % (self.experiment.correlation_status)
    display_corr_status.short_description = 'correlation complete'

    def get_absolute_url(self):
        """
        Returns the url to access a particular experiment instance.
        """
        return reverse('experiment-detail', args=[str(self.experiment_id)])
#    def display_raid_path(self):
#        """
#        Creates a string for the raid_path. This is required to display raid path in Admin.
#        """
#        return '%s' % (self.raid.name)
#    display_raid_path.short_description = 'raid path'

##   make sure only one instance of station per experiment
    class Meta:
        unique_together=('station', 'experiment')
 #  order by date recorded
    class Meta:
        ordering = ["recorded"]

    
    def __str__(self):
        """
        String for representing the Model object
        """
        return  '%s%s' % (self.experiment.name, self.station)  #self.station

  ### save method set R4 as transfered when shipped
#    def save(self, *args, **kwargs):
#        if  self.experiment_id.find('R4')==0 and [module.transit==True for module in self.module.all()[:3]]:
#            self.transfer_to_correlator='u'
#            self.module_to_raid = 'u'
#        super().save(*args, **kwargs)




class Module(models.Model):
    """
    Model representing disk pack module storage.
    """
    vsn = models.CharField(max_length=8, primary_key=True, unique=True, blank=True, help_text="8 character Volume Serial Number")
    size = models.IntegerField(null=True, blank=True, help_text = "Module size in GB")
    free = models.IntegerField(null=True, blank=True, help_text = "Free space in GB")
    modified=models.DateField(null=True, help_text ="Set by postgresl function triggered on update")
    LOCATION = (
    ('ke', 'Katherine'),
    ('ho', 'Hobart'),
    ('yg', 'Yarragadee'),
    ('cd', 'Ceduna'),
    ('td', 'Tidbinbilla'),
    ('wn', 'Washington'),
    ('ff', 'Failed'),
    )    
    location = models.CharField(max_length=2, choices=LOCATION, null=True, help_text='Enter new (destination) location')
    ship = models.CharField(max_length=20, null=True, blank=True, help_text='Enter shipping reference')
    transit =  models.BooleanField(default=False,help_text="Is module currently in transit to location?")
    
    class Meta:
        permissions = (("can_ship", "Set module shipping reference"),)
    def __str__(self):
        """
        String for representing the Model object.
        """
        return self.vsn

    def empty(self):
        """
        Is module empty? 
        """
        if self.free is not None:
 
            if  abs(self.free - self.size) <= 10:
                return True
        else:
            return False

    def flxbuf(self):
        """
        Is module flexbuff storage?
        """
        if self.vsn.startswith("flx"):
            return True
        else:
            return False


    def usb(self):
        """
        Is module external usb type?
        """
        if self.vsn.startswith("EXT"):
            return True
        elif self.vsn.startswith("SSD"):
            return True
        else:
            return False


  ### save method use size for free default
    def save(self, *args, **kwargs):
        if not self.free:
            self.free = int(self.size)
        super().save(*args, **kwargs)




    def display_experiments(self):
        """
        Creates a string for the recordings on module. This is required to display  in Admin list and home page.
        """
        return ', '.join([ experimentinstance.experiment.name + experimentinstance.station for experimentinstance  in  self.experimentinstance_set.all()]).lower()
    def get_absolute_url(self):
        """
        Returns the url to access a particular module instance.
        """
        return reverse('module-detail', args=[str(self.vsn)])


class Correlator(models.Model):
    """
    Model representing the correlator.
    """
    
    CORR = (
        ('BONN', 'Bonn'),
        ('HAYS', 'Haystack'),
	('WASH',  'Washington'),
	('SHAO', 'Shanghai'),
        ('VLBA', 'VLBA'),
	('GSI', 'Geoscience Institute'),
	('VIEN', 'Vienna'),
	('CURT', 'Curtin'),
	('HOB', 'Hobart'),
	('CASS', 'ATNF'),
	('RUSS','Radio Astron'),
        ('JIVE', 'Jive Netherlands'),
    )

  
    name = models.CharField(max_length=4, choices=CORR, primary_key=True)

    def get_absolute_url(self):
        """
        Returns the url to access a particular correlator instance.
        """
        return reverse('correlator-detail', args=[str(self.name)])
    

    def __str__(self):
        """
        String for representing the Model object.
        """
        return self.name

class Storage(models.Model):
    """
    Model representing correlator storage.
    """
  
    correlator = models.ForeignKey('Correlator', on_delete=models.SET_NULL, null=True)
    server_name = models.CharField(max_length=100 ,blank=True)
    ip = models.CharField(max_length=100 , blank=True,help_text = "IP address")
    port = models.CharField(max_length=100 ,blank=True, help_text = "Port number")
    freespace = models.IntegerField( blank=True,help_text = "Available space in TB",null=True)
    transferrate = models.IntegerField( blank=True, help_text = "Available transfer bandwidth", null=True)    

    def display_corr_name(self):
        """
        Creates a string for the correlator. This is required to display correlator in Admin list.
        """
        return '%s ' %(self.correlator)
    display_corr_name.short_description = 'Correlator'

    def get_absolute_url(self):
        """
        Returns the url to access a particular stotrage instance.
        """
        return reverse('storage-detail', args=[str(self.id)])
    

    def __str__(self):
        """
        String for representing the Model object.
        """
        return self.server_name


class Raid(models.Model):
    """
    Model representing local RAID storage.
    """
    RAID = (
        ('bfg8', '/mnt/bfg8'),
        ('bfg16', '/mnt/bfg16'),
        ('IVS',  '/mnt/rd1/IVS'),
        ('IVS1',  '/mnt/rdsi/IVS'),
        ('godzilla8', '/mnt/godzilla8'),
        ('godzilla16', '/mnt/godzilla16'),
        ('cornucopia', '/mnt/cornucopia'),
	('AUSTRAL' , '/mnt/rd1/AUSTRAL'),
        ('AUSTRAL1' , '/mnt/rdsi/AUSTRAL'),
	('astro' , '/mnt/rd1/astro'),
        ('astro1' , '/mnt/rd1/astro'),
	('LBA' , '/mnt/rd1/LBA'),
        ('LBA1' , '/mnt/rdsi/LBA'),
	('jupiter' , '/mnt/RAID'),
	('jupiter2', '/mnt/RAID2'),
	('sirius8' , '/mnt/sirius8'),
	('sirius16' , '/mnt/sirius16'),
        ('flexbuf3','/mnt/flexbuf3'),
        ('flexbuf2','/mnt/flexbuf2'),
        ('flexbuf1','/mnt/flexbuf1'),
        ('flexbuf0','/mnt/flexbuf0'),
	('vortex', '/mnt/vortex'),
	('colossos','/mnt/colossos'),
        ('flxbffhb','flexbuffhb'),
        ('flxbffyg','flexbuffyg'),
        ('flxbffke','flexbuffke'),
        ('flxbffcd','flexbuffcd'),
        ('flxbflke','flexbuflke'),
        ('flxbflyg','flexbuflyg'),
     )



    name = models.CharField(max_length=16 , choices=RAID, primary_key=True)
    ip = models.CharField(max_length=16, blank=True, help_text = "IP address")
    path = models.CharField(max_length=100 , blank=True, help_text = "file system path",null=True)
    freespace = models.IntegerField(blank=True, help_text = "Available space in TB", null=True)
    size = models.IntegerField( blank=True, help_text = "Total space in TB ", null=True)
    
    def get_absolute_url(self):
        """
        Returns the url to access a particular storage instance.
        """
        return reverse('raid-detail', args=[str(self.id)])
    

    def __str__(self):
        """
        String for representing the Model object.
        """
        return self.name


