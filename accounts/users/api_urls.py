from django.urls import path, include
from .api_views import (
    api_user,
    api_user_change,
    api_user_token,
    api_current_user,
    api_increment_coin,
    api_leaderboard,
    api_user_complete_workout,
)


# from .api_views import  create_user

urlpatterns = [
    path("account/", api_user, name="api_user"),
    path("account/completed/", api_user_complete_workout, name="api_complete"),
    path("account/<int:pk>/", api_increment_coin, name="api_increment"),
    path("account/details/<int:pk>/", api_user_change, name="api_user_change"),
    path("account/leaderboard/", api_leaderboard, name="api_leaderboard"),
    path("accounts/me/token/", api_user_token, name="api_token"),
    path("account/<str:username>", api_current_user, name="api_current_user"),
]
