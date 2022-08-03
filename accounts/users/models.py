from datetime import date
from datetime import datetime
from django.db import models
from django.contrib.auth.models import AbstractUser, PermissionsMixin
from django.core.validators import int_list_validator



class User(AbstractUser):
    email = models.EmailField(unique=True)
    coins = models.IntegerField(default=0)
    picture_url = models.URLField(null=True)

    def __str__(self):
        return f"{self.email}"



class Completed_Workout(models.Model):
    workout_id = models.IntegerField(blank=True, null=True, default=0)
    date = models.CharField(null=True, blank=True, max_length=100)

