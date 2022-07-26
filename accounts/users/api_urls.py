from django.urls import path, include
# api_user_token
# import djwto
from django.urls import path
from .api_views import api_user, api_user_token, api_current_user, api_increment_coin


# from .api_views import  create_user

urlpatterns = [
    path("account/", api_user, name="api_user"),
    path("account/<int:pk>/", api_increment_coin, name="api_increment"),
    # path("", include("djwto.urls")),
    # path("api/tokens/mine/", api_user_token, name="api_token"),
    path("accounts/me/token/", api_user_token, name="api_token"),
    path("account/<str:username>", api_current_user, name="api_current_user")
]
