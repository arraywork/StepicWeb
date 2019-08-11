from django.conf.urls import url


from . import views

urlpatterns = [
    url(r'^$',views.test, name='test' ),
    url(r'^signup/.*$',views.test, ),
    url(r'^ask/.*$',views.test),
    url(r'^popular/.*$',views.test),
    url(r'^answer/.*$',views.test),
    url(r'^new/.*$',views.test),
    #url(r'^question/(?P<id>[0-9]+)/$', views.test, name='test'),
    #url(r'^question/\d+/$', views.test, name='test'),
    url(r'^questions/\d+/$', views.test, name= 'test' ),


]
