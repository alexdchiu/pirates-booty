from django.urls import path, include
from .api_views import api_user, api_heart
# api_user_token
# import djwto

# from .api_views import  create_user

urlpatterns = [
    path("account/", api_user, name="api_user"),
    
]

    # path("", include("djwto.urls")),
    # path("api/tokens/mine/", api_user_token, name="api_token"),