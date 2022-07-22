import djwto.authentication as auth
from django.shortcuts import render
from django.db import IntegrityError
from django.http import HttpResponse, JsonResponse
from django.views.decorators.http import require_http_methods
from django.utils import timezone
import json
# Create your views here.

from common.json import ModelEncoder
from .models import User


class AccountModelEncoder(ModelEncoder):
    model = User
    properties = ["username", "heart"]


class AccountDetailModelEncoder(ModelEncoder):
    model = User
    properties = [
        "username",
        "email",
        "first_name",
        "last_name",
        "password"
    ]


@require_http_methods(["GET", "POST"])
def api_user(request):
    if request.method == "GET":
        user = User.objects.all()
        return JsonResponse(
            {"user": user},
            encoder=AccountDetailModelEncoder,
            safe=False,
        )
    else:
        content = json.loads(request.body)
        newuser = User.objects.create_user(**content)
        return JsonResponse(
            newuser,
            encoder=AccountDetailModelEncoder,
            safe=False,
        )


@require_http_methods(["GET"])
def saved_workouts(request):
    heartworkouts = User.objects.filter(heart=True)
    return JsonResponse(
        heartworkouts,
        encoder=AccountModelEncoder,
        safe=False,
    )

@require_http_methods(["PUT"])
def api_heart(requests, pk):
    heart = User.objects.get(workout=pk)
    heart[True] = heart
    heart.save()
    return JsonResponse(
        heart,
        encoder=AccountModelEncoder,
        safe=False,
    )



# @require_http_methods(["POST"])
# def api_user_token(request):
#     if "jwt_access_token" in request.COOKIES:
#         token = request.COOKIES["jwt_access_token"]
#         if token:
#             return JsonResponse({"token": token})
#     response = JsonResponse({"token": None})
#     return response
def api_user_token(request):
    # print("reques", request)
    if "jwt_access_token" in request.COOKIES:
        token = request.COOKIES["jwt_access_token"]
        # print('token in api_user_token view.py', token)
        if token:
            return JsonResponse({"token": token})
    response = JsonResponse({"token": None})
    return response


# @require_http_methods(["PUT"])
# def api_increment_coin(requests, pk):
#     increase = User.objects.get(id=pk)
#     increase.increment()
#     return JsonResponse(
#         increase,
#         encoder=CoinViewEncoder,
#         safe=False,
#     )

# @require_http_methods(["GET"])
# @auth.jwt_login_required
# def api_current_user(request):
#     print(request.payload)
#     user_id = request.payload["user"]["id"]
#     user = User.objects.get(id=user_id)
#     return JsonResponse(
#         {
#             "username": user.username,
#             "email": user.email,
#             "first_name": user.first_name,
#             "last_name": user.last_name,
#         })
