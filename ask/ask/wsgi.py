"""
WSGI config for ask project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/2.2/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ask.settings')

application = get_wsgi_application()
def app(environ, start_response):
    status = '200 OK'
    headers = [('Content-Type', 'text/plain')]
    body = environ['QUERY_STRING']
    body = '\n'.join(body.split('&')).encode('utf-8')
    start_response(status, headers)
    return iter([body])
