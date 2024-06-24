import os
from django.core.wsgi import get_wsgi_application
from inventarios.inventarios import settings

os.environ.setdefault('DJANGO_SETTINGS_MODULE', settings)

application = get_wsgi_application()
