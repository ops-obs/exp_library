from django.conf.urls import url

from . import views


urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^transfers/$', views.transfers, name='transfers'),
    url(r'^experiments/$', views.ExperimentListView.as_view(), name='experiments'),
    url(r'^experiment/(?P<pk>\w+)$', views.ExperimentDetailView.as_view(), name='experiment-detail'),
    url(r'^correlators/$', views.CorrelatorListView.as_view(), name='correlators'),
    url(r'^correlator/(?P<pk>\w+)$', views.CorrelatorDetailView.as_view(), name='correlator-detail'),
    url(r'^modules/$', views.ModuleListView.as_view(), name='modules'),
    url(r'^module/(?P<pk>\w.+)$', views.ModuleDetailView.as_view(), name='module-detail'),
    url(r'^search/$', views.ExperimentSearchView.as_view(), name='exp_search'),
]
urlpatterns += [   
    url(r'^(?P<pk>\w.+)/ship/', views.ModuleShip.as_view(), name='module-ship'),
    url(r'^(?P<pk>\w.+)/allocate/', views.ModuleExperiment.as_view(), name='module-allocate'),
    #url(r'^(?P<pk>\w.+)/search/', views.ExperimentSearchView.as_view(), name='exp-search'),
    url(r'^make/', views.ModuleMake.as_view(), name='module-make'),
]
