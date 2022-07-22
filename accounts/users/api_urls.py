from django.urls import path
from .api_views import api_user, api_user_token


# from .api_views import  create_user

urlpatterns = [
    path("account/", api_user, name="api_user"),
    path("accounts/me/token/", api_user_token, name="api_token"),
]