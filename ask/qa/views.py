from django.conf.urls import url
from django.http import HttpResponse 
def test(request, *args, **kwargs):
    return HttpResponse('OK')
