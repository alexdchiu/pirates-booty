from django.urls import path
from .api_views import api_user

# from .api_views import  create_user

urlpatterns = [
    path("account/", api_user, name="api_user"),
]