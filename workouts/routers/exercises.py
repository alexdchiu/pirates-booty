from fastapi import APIRouter, Response, status
from pydantic import BaseModel
import psycopg
import os

router = APIRouter()

workouts_url = os.environ["DATABASE_URL"]


class ExerciseOut(BaseModel):
    id: int
    body_part: str
    equipment: str
    gif_url: str
    name: str
    target: str
    intensity: int
    length_of_workout: int


class Message(BaseModel):
    message: str


@router.get("/api/workouts/all", responses={404: {"model": Message}})
def get_all_exercises(response: Response):
    with psycopg.connect(workouts_url) as conn:
        with conn.cursor() as cur:
            result = cur.execute(
                """
        SELECT json_build_object(
          'id', exercises.id,
          'name', exercises.name,
          'body_part', exercises.body_part,
          'target', exercises.target,
          'equipment', exercises.equipment,
          'intensity', exercises.intensity,
          'length_of_workout', exercises.length_of_workout,
          'gif_url', exercises.gif_url
        )
        FROM exercises;
        """,
            ).fetchall()

            json_result = {}
            exercise_list = []
            for exercise in result:
                exercise_list.append(exercise[0])
            json_result["exercises"] = exercise_list

            if result is None:
                response.status_code = status.HTTP_404_NOT_FOUND
                return {"message": "Error fetching."}

            else:
                return json_result


@router.get("/api/workouts/{exercise_id}", responses={404: {"model": Message}})
def get_exercise_by_id(exercise_id: int, response: Response):
    with psycopg.connect(workouts_url) as conn:
        with conn.cursor() as cur:
            result = cur.execute(
                """
        SELECT json_build_object(
          'id', exercises.id,
          'name', exercises.name,
          'body_part', exercises.body_part,
          'target', exercises.target,
          'equipment', exercises.equipment,
          'intensity', exercises.intensity,
          'length_of_workout', exercises.length_of_workout,
          'gif_url', exercises.gif_url
        )
        FROM exercises
        WHERE exercises.id = %s;
        """,
                [exercise_id],
            ).fetchone()

            json_result = {}

            if result is None:
                response.status_code = status.HTTP_404_NOT_FOUND
                return {"message": "Error fetching."}

            else:
                json_result["exercises"] = result[0]
                return json_result


@router.get(
    "/api/workouts/guest/random-wheel",
)
def get_random_workout_wheel(
    response: Response,
):
    with psycopg.connect(workouts_url) as conn:
        with conn.cursor() as cur:
            result = cur.execute(
                """
        SELECT json_build_object(
          'id', exercises.id,
          'name', exercises.name,
          'body_part', exercises.body_part,
          'target', exercises.target,
          'equipment', exercises.equipment,
          'intensity', exercises.intensity,
          'length_of_workout', exercises.length_of_workout,
          'gif_url', exercises.gif_url
        )
        FROM exercises
        ORDER BY random()
        LIMIT 10;
        """,
            ).fetchall()

            list_for_json = []
            for item in result:
                list_for_json.append(item[0])

            if result is None:
                response.status_code = status.HTTP_404_NOT_FOUND
                return {"message": "Error fetching."}

            else:
                return list_for_json


@router.get(
    "/api/workouts/filtered/",
)
def get_filtered_workout_list_for_logged_in_users(
    target,
    equipment,
    response: Response,
):

    with psycopg.connect(workouts_url) as conn:
        with conn.cursor() as cur:
            result = cur.execute(
                """
        SELECT json_build_object(
          'id', exercises.id,
          'name', exercises.name,
          'body_part', exercises.body_part,
          'target', exercises.target,
          'equipment', exercises.equipment,
          'intensity', exercises.intensity,
          'length_of_workout', exercises.length_of_workout,
          'gif_url', exercises.gif_url
        )
        FROM exercises
        WHERE (target = %s)
          AND (equipment = %s)
        ORDER BY intensity, length_of_workout asc;
        """,
                [target, equipment],
            ).fetchall()

            list_for_json = []
            for item in result:
                list_for_json.append(item[0])
            json_result = {}
            json_result["exercises"] = list_for_json

            if result is None:
                response.status_code = status.HTTP_404_NOT_FOUND
                return {"message": "Error fetching."}

            else:
                return json_result


@router.post("/api/workouts/completed_workouts", responses={404: {"model": Message}})
def get_completed_workouts_for_user(
    exercise_ids: list[int],
    response: Response,
):
    with psycopg.connect(workouts_url) as conn:
        with conn.cursor() as cur:
            result = cur.execute(
                """
        SELECT json_build_object(
          'id', exercises.id,
          'name', exercises.name,
          'body_part', exercises.body_part,
          'target', exercises.target,
          'equipment', exercises.equipment,
          'intensity', exercises.intensity,
          'length_of_workout', exercises.length_of_workout,
          'gif_url', exercises.gif_url
        )
        FROM exercises
        WHERE exercises.id = ANY(%s);
        """,
                [exercise_ids],
            ).fetchall()

            json_result = {}
            json_list = []
            for exercise in result:
                json_list.append(exercise[0])
            json_result["exercises"] = json_list

            if result is None:
                response.status_code = status.HTTP_404_NOT_FOUND
                return {"message": "Error fetching."}

            else:
                return json_result
