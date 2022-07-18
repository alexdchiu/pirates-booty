from unicodedata import name
from fastapi import APIRouter, Response, status
from pydantic import BaseModel
import psycopg
import os

router = APIRouter()

workouts_url = os.environ['DATABASE_URL']

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


@router.get(
  '/api/workouts/{exercise_id}',
  responses = {404: {'model': Message}}
)
def get_exercise(
  exercise_id: int,
  response: Response
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
        WHERE exercises.id = %s;
        """,
        [exercise_id],
      ).fetchone()

      if result is None:
        response.status_code = status.HTTP_404_NOT_FOUND
        return {"message": "Workout does not exist"}
      
      else:
        return result

@router.get(
  '/api/random-workout-wheel',
)
def get_random_workout_wheel(
  response: Response
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
        """
      ).fetchall()

      if result is None:
        response.status_code = status.HTTP_404_NOT_FOUND
        return {"message": "Clue does not exist"}
      
      else:
        return result

@router.get(
  '/api/random-workout-wheel/{target}',
)
def get_random_workout_wheel_by_target(
  target,
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
        WHERE target = %s
        ORDER BY random()
        LIMIT 10;
        """,
        [target]
      ).fetchall()

      if result is None:
        response.status_code = status.HTTP_404_NOT_FOUND
        return {"message": "Clue does not exist"}
      
      else:
        return result