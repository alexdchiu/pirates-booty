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
    properties = ["username", "email"]


def create_user(json_content):
    try:
        content = json.loads(json_content)
    except json.JSONDecodeError:
        return 400, {"message": "Bad JSON"}, None

    required_properties = [
        "username",
        "email",
        "password",
        "first_name",
        "last_name",
    ]
    missing_properties = []
    for required_property in required_properties:
        if (
            required_property not in content
            or len(content[required_property]) == 0
        ):
            missing_properties.append(required_property)
    if missing_properties:
        response_content = {
            "message": "missing properties",
            "properties": missing_properties,
        }
        return 400, response_content, None

    try:
        account = User.objects.create_user(
            username=content["username"],
            email=content["email"],
            password=content["password"],
            first_name=content["first_name"],
            last_name=content["last_name"],
        )
        return 200, account, account
    except IntegrityError as e:
        return 409, {"message": str(e)}, None
    except ValueError as e:
        return 400, {"message": str(e)}, None