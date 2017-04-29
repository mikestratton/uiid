from django.conf import settings
from django.http import HttpResponse
from django.shortcuts import get_object_or_404, render_to_response
from django.template import RequestContext
from django.contrib import messages


def index(request):
	return HttpResponse('UIID')

