# from fastapi import APIRouter, Response, status
# from pydantic import BaseModel
from ftplib import parse227
import psycopg2
import json

with open("exercises.json") as json_file:
    exercises = json.load(json_file)
    # slice data
    json_file.close()

# print(exercises)


def add_workout(obj):
    # with psycopg2.connect() as conn:
    db_conn = psycopg2.connect(
        dbname="workouts",
        user="postgres",
        password="test-databases",
        host="localhost",
        port="15432",
    )
    with db_conn.cursor() as cur:
        try:
            # Uses the RETURNING clause to get the data
            # just inserted into the database. See
            # https://www.postgresql.org/docs/current/sql-insert.html
            # print('hello')
            # print('exercise', exercise)
            cur.execute(
                """
              BEGIN;
              INSERT INTO exercises (id, body_part, equipment, gif_url, name, target, intensity, length_of_workout)
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
            # status values at https://github.com/encode/starlette/blob/master/starlette/status.py
            # response.status_code = status.HTTP_409_CONFLICT
            return {
                "message": "Could not create duplicate category",
            }
        print("inputted new row")
        # row = cur.fetchone()
        # print('row', row)
        # record = {}
        # for i, column in enumerate(cur.description):
        #   record[column.name] = row[i]
        # print(record)
        # return record
        # return list(row)


for exercise in exercises:
    # print(exercise)
    # exercise = exercises[i]
    add_workout(exercise)

# print(exercises[1]['name'])
# add_workout(exercises[1])
