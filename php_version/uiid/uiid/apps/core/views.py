from django.conf import settings
from django.http import HttpResponse
from django.shortcuts import get_object_or_404, render_to_response
from django.template import RequestContext
from django.contrib import messages

from models import UserType, Score

import json

def index(request):
	return HttpResponse('UIID')

def jsonParse(jsonStr):
	#Takes in a json structure  of form '{"User_Type":"val1","User_Query":"val2","Rated_Url":"val3"}'
	#and parses into an array of 3 Python variables [val1,val2,val3]
	jsonData=json.loads(jsonStr)
	User_Type=jsonData['User_Type']
	User_Query=jsonData['User_Query']
	Rated_URL=jsonData['Rated_Url']
	jsonList=[User_Type,User_Query,Rated_URL]

	return jsonList

def jsonForm(user_type,user_query,rated_url):
	#Takes 3 strings and concatenates into a json string
	jsonSTR='{"User_Type":"'+user_type+'","User_Query":"'+user_query+'","Rated_Url":"'+rated_url+'"}'
	return jsonSTR

def recommend(request, user_type):
	try:
		ut = UserType.objects.get(name=user_type)
	except:
		return HttpResponse('NONE')

	scores = Score.objects.filter(user_type=ut, score__gte=5).order_by('score')

	if len(scores) == 0:
		return HttpResponse('NONE')
	else:
		return HttpResponse(scores[0].url)
