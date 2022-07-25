from django.db import models
from django.contrib.auth.models import AbstractUser, PermissionsMixin
from django.core.validators import int_list_validator

# class Coins(models.Model):
#     amount = models.IntegerField(default=0)

class User(AbstractUser):
    email = models.EmailField(unique=True)
    heart = models.BooleanField(default=False)

    def __str__(self):
        return f"{self.email}"

    # @classmethod
    # def create(cls, **kwargs):
    #     kwargs["coins"] = Coins.objects.get(amount=0)
    #     user = cls(**kwargs)
    #     user.save()
    #     return user
    # def increment(self):
    #     user.increment += 10
#         user.save()
#         return user  



class Completed_Workout(models.Model):
    workout_id = models.IntegerField
    user = models.ForeignKey(
        User, on_delete=models.CASCADE
    )
