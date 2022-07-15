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
    properties = ["username"]


class AccountDetailModelEncoder(ModelEncoder):
    model = User
    properties = [
        "username",
        "email",
        "first_name",
        "last_name",
    ]


@require_http_methods(["GET", "POST"])
def api_user(request):
    if request.method == "GET":
        userdetail = User.objects.all()
        return JsonResponse(
            {"user": userdetail},
            encoder=AccountDetailModelEncoder,
            safe=False,
        )
    else:
        content = json.loads(request.body)
        newuser = User.objects.create(**content)
        return JsonResponse(
            newuser,
            encoder=AccountDetailModelEncoder,
            safe=False,
        )


# @require_http_methods(["PUT"])
# def api_increment_coin(requests, pk):
#     increase = User.objects.get(id=pk)
#     increase.increment()
#     return JsonResponse(
#         increase,
#         encoder=CoinViewEncoder,
#         safe=False,
#     )

# 