from types import NoneType
from fastapi.testclient import TestClient
from main import app
from routers.exercises import get_exercise_by_id
from unittest import TestCase

client = TestClient(app)

# def get_exercise_by_id_test():
#         r = {
#         "exercises": {
#             "id": 1,
#             "name": "test",
#             "body_part": "test",
#             "target": "test",
#             "equipment": "test",
#             "intensity": 1,
#             "length_of_workout": 5,
#             "gif_url": "test"
#         }
#         }
#         return r

    
def test_get_exercise_by_id_returns_200():
    # app.dependency_overrides[get_exercise_by_id] = get_exercise_by_id_test
    response = client.get("/api/workouts/1")
    assert response.status_code == 200
    # assert response.json() == {
    #     "exercises": {
    #         "id": 1,
    #         "name": "test",
    #         "body_part": "test",
    #         "target": "test",
    #         "equipment": "test",
    #         "intensity": 1,
    #         "length_of_workout": 5,
    #         "gif_url": "test"
    #     }
    #     }
    # app.dependency_overrides = {}
    # assert response.json() == {
    #     "exercises": {
    #         "id": 1,
    #         "name": "3/4 sit-up",
    #         "body_part": "waist",
    #         "target": "abs",
    #         "equipment": "body weight",
    #         "intensity": 1,
    #         "length_of_workout": 30,
    #         "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0001.gif"
    #     }
    # }

def test_get_exercise_by_id_returns_400():
    response = client.get("/api/workouts/110982381298371928371")
    assert response.status_code == 404


def test_get_all_exercises_returns_200():
    response = client.get("/api/workouts/all")
    assert response.status_code == 200


def test_get_random_workout_wheel_returns_200():
    response = client.get("/api/workouts/guest/random-wheel")
    assert response.status_code == 200


def test_get_filtered_random_workout_wheel_returns_200():
    response = client.get("/api/workouts/filtered/random-wheel?target=abs&equipment=body%20weight")
    assert response.status_code == 200


def test_completed_workouts_for_user_returns_422():
    response = client.get("/api/workouts/completed_workouts")
    assert response.status_code == 422