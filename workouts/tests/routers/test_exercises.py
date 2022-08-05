from fastapi.testclient import TestClient
from main import app
import json

client = TestClient(app)


def test_get_exercise_by_id_returns_200():
    response = client.get("/api/workouts/1")
    assert response.status_code == 200


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
    response = client.get(
        "/api/workouts/filtered/random-wheel?target=abs&equipment=body%20weight"
    )
    assert response.status_code == 200


def test_completed_workouts_for_user_returns_422():
    url = "/api/workouts/completed_workouts"
    payload = [1, 2, 3]
    response = client.post(url, data=json.dumps(payload))
    assert response.status_code == 200
    assert response.json() == {
        "exercises": [
            {
                "id": 1,
                "name": "3/4 sit-up",
                "body_part": "waist",
                "target": "abs",
                "equipment": "body weight",
                "intensity": 1,
                "length_of_workout": 30,
                "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0001.gif",
            },
            {
                "id": 2,
                "name": "45° side bend",
                "body_part": "waist",
                "target": "abs",
                "equipment": "body weight",
                "intensity": 9,
                "length_of_workout": 15,
                "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0002.gif",
            },
            {
                "id": 3,
                "name": "air bike",
                "body_part": "waist",
                "target": "abs",
                "equipment": "body weight",
                "intensity": 6,
                "length_of_workout": 15,
                "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0003.gif",
            },
        ]
    }
