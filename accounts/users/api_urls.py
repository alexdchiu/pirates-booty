from django.urls import path
from .api_views import api_user, api_user_token, api_current_user


# from .api_views import  create_user

urlpatterns = [
    path("account/", api_user, name="api_user"),
    path("accounts/me/token/", api_user_token, name="api_token"),
    path("account/<str:username>", api_current_user, name="api_current_user")
]