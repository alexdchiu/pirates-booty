from django.db import models
from django.contrib.auth.models import AbstractUser, PermissionsMixin

# class Coins(models.Model):
#     amount = models.IntegerField(default=0)


class User(AbstractUser):
    email = models.EmailField(unique=True)

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