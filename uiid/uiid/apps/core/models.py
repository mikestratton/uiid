from django.db import models

class UserType(models.Model):
	name = models.CharField(max_length=250)

class DataLink(models.Model):
	url = models.CharField(max_length=250)

class Score(models.Model):
	user_type = models.ForeignKey(UserType)
	url = models.ForeignKey(DataLink)
	score = models.IntegerField()

