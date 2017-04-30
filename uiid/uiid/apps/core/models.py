from django.db import models

class UserType(models.Model):
	name = models.CharField(max_length=250)

	def __unicode__(self):
		return self.name


class DataLink(models.Model):
	url = models.CharField(max_length=250)

	def __unicode__(self):
		return self.url


class Score(models.Model):
	user_type = models.ForeignKey(UserType)
	url = models.ForeignKey(DataLink)
	score = models.IntegerField()

	def __unicode__(self):
		return "%s, %s, %s" % (self.user_type, self.url, self.score)
