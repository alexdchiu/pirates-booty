from django.db import models
from django.contrib.auth.models import AbstractUser, PermissionsMixin
from django.core.validators import int_list_validator

# class Coins(models.Model):
#     amount = models.IntegerField(default=0)


class User(AbstractUser):
    email = models.EmailField(unique=True)
    coins = models.IntegerField(default=0)
    picture_url = models.URLField(null=True)

    def __str__(self):
        return f"{self.email}"

    # @classmethod
    # def create(cls, **kwargs):
    # kwargs["coins"] = Coins.objects.get(amount=0)
    # user = cls(**kwargs)
    # user.save()
    # return user

    # def increment(self):
    # user = Coins.objects.get(amount=[+1])
    # self.user = user
    # self.save()


#  class SavedWorkoutVO(models.Model):

class Completed_Workout(models.Model):
    workout_id = models.IntegerField
    date = models.CharField(null=True, blank=True, max_length=100)
    # user = models.ForeignKey(
    #     User, on_delete=models.CASCADE
    # )