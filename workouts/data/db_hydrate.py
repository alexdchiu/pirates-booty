import psycopg2
import json

with open("exercises.json") as json_file:
    exercises = json.load(json_file)
    json_file.close()


def add_workout(obj):
    db_conn = psycopg2.connect(
        dbname="workouts",
        user="postgres",
        password="test-databases",
        host="localhost",
        port="15432",
    )
    with db_conn.cursor() as cur:
        try:
            cur.execute(
                """
              BEGIN;
              INSERT INTO exercises (
                    id
                    , body_part
                    , equipment
                    , gif_url
                    , name
                    , target
                    , intensity
                    , length_of_workout
                    )
              VALUES (
                    %(id)s
                    , %(bodyPart)s
                    , %(equipment)s
                    , %(gifUrl)s
                    , %(name)s
                    , %(target)s
                    , %(intensity)s
                    , %(length_of_workout)s
                    )
              RETURNING (id, name);
              COMMIT;
          """,
                obj,
            )
        except psycopg2.errors.UniqueViolation:
            return {
                "message": "Could not create duplicate category",
            }
        print("inputted new row")


for exercise in exercises:
    add_workout(exercise)
