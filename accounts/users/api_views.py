from pyexpat import model
import djwto.authentication as auth
from django.shortcuts import render
from django.db import IntegrityError
from django.http import HttpResponse, JsonResponse
from django.views.decorators.http import require_http_methods
from django.utils import timezone
import json
# Create your views here.

from common.json import ModelEncoder
from .models import User, Completed_Workout


class AccountModelEncoder(ModelEncoder):
    model = User
    properties = ["username", "coins"]


class AccountDetailModelEncoder(ModelEncoder):
    model = User
    properties = [
        "id",
        "username",
        "email",
        "first_name",
        "last_name",
        "password"
    ]

class CompleteWorkoutEncoder(ModelEncoder):
    model = Completed_Workout
    properties = [
        "workout_id",
        "user"
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




def api_user_token(request):
    # print("request", request)
    if "jwt_access_token" in request.COOKIES:
        token = request.COOKIES["jwt_access_token"]
        # print('token in api_user_token view.py', token)
        if token:
            return JsonResponse({"token": token})
    response = JsonResponse({"token": None})
    return response


@require_http_methods(["PUT"])
def api_increment_coin(requests, pk):
    user = User.objects.get(id=pk)
    user.coins += 1
    user.save()
    return JsonResponse(
        user,
        encoder=AccountModelEncoder,
        safe=False,
    )

@require_http_methods(["GET"])
@auth.jwt_login_required
def api_current_user(request, username):
    print(request.payload)
    username = request.payload["user"]["username"]
    user = User.objects.get(username=username)
    return JsonResponse(
        {
            "id": user.id,
            "username": user.username,
            "email": user.email,
            "first_name": user.first_name,
            "last_name": user.last_name,
        })


@require_http_methods(['POST'])
def api_user_complete_workout(request):
    content = json.loads(request.body)
    completed_workout = Completed_Workout.objects.create(**content)
    return JsonResponse(
        completed_workout,
        encoder=CompleteWorkoutEncoder,
        safe=False,
    )
