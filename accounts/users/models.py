from django.db import models
from django.contrib.auth.models import AbstractUser, PermissionsMixin
from django.core.validators import int_list_validator



class User(AbstractUser):
    email = models.EmailField(unique=True)
    coins = models.IntegerField(default=0)

    def __str__(self):
        return f"{self.email}"



class Completed_Workout(models.Model):
    workout_id = models.IntegerField()
    user = models.ForeignKey(
        User, related_name="users", on_delete=models.CASCADE
    )

# one to many- 
# 
