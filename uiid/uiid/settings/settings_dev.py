from uiid.settings.settings_base import *
from uiid.settings.database_dev import *

ALLOWED_HOSTS = ['*']
DEBUG = True

PROJECT_DIR = '/opt/uiid/uiid/uiid/'

SECRET_KEY = 'key'

EMAIL_HOST = 'localhost'
EMAIL_PORT = 25
EMAIL_HOST_USER = 'no-replies-please'
EMAIL_HOST_PASSWORD = ''
EMAIL_USE_TLS = False

MEDIA_ROOT = PROJECT_DIR + 'media/'
MEDIA_URL = '/media/'

STATIC_ROOT = PROJECT_DIR + 'sitestatic/'
STATIC_URL = '/static/'

ADMIN_MEDIA_PREFIX = '/static/admin/'

STATICFILES_DIRS = (
	PROJECT_DIR + 'static',
)

TEMPLATES = [
	{
		'BACKEND': 'django.template.backends.django.DjangoTemplates',
		'DIRS': [PROJECT_DIR + 'templates'],
		'APP_DIRS': True,
		'OPTIONS': {
			'context_processors': [
				'django.contrib.auth.context_processors.auth',
				'django.template.context_processors.debug',
				'django.template.context_processors.i18n',
				'django.template.context_processors.media',
				'django.template.context_processors.static',
				'django.template.context_processors.tz',
			],
		},
	},
]
