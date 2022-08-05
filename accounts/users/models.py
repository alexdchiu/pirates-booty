from django.db import models
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    email = models.EmailField(unique=True)
    coins = models.IntegerField(default=0)
    picture_url = models.URLField(null=True)

    def __str__(self):
        return f"{self.email}"


class Completed_Workout(models.Model):
    workout_id = models.IntegerField()
    date = models.CharField(null=True, blank=True, max_length=100)
    user = models.ForeignKey(User, related_name="users", on_delete=models.CASCADE)


# one to many-
#
