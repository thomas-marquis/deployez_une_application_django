from . import *

DEBUG = False

SECRET_KEY = '4i&u(fhdf^dsvlcxww<c:qsqlfkfdsfch_wyzk7@#n3bd8e'

ALLOWED_HOSTS = ['*']

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'disquairedb',
        'USER': 'discman',
        'PASSWORD': 'Admin_13345!?',
        'HOST': 'postgres',
        'PORT': '5432',
    }
}

STATIC_ROOT = os.path.join(BASE_ROOT, 'staticfiles')
