# from fastapi import APIRouter, Response, status
# from pydantic import BaseModel
from ftplib import parse227
import psycopg2
import json

with open("exercises.json") as json_file:
  exercises = json.load(json_file)
  json_file.close()

# print(exercises)



def add_workout(obj):
    # with psycopg2.connect() as conn:
    db_conn = psycopg2.connect(dbname="postgres", user="alexchiu", password="1234", host="localhost", port="5432")
    with db_conn.cursor() as cur:
        try:
            # Uses the RETURNING clause to get the data
            # just inserted into the database. See
            # https://www.postgresql.org/docs/current/sql-insert.html
          # print('hello')
            # print('exercise', exercise)
          cur.execute(
              """
              INSERT INTO exercises2 (id, bodypart, equipment, gifurl, name, target, intensity, length_of_workout)
              VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
              RETURNING (id, bodypart, equipment, gifurl, name, target, intensity, length_of_workout);
          """,
              [
                obj['id'], 
                obj['bodyPart'],
                obj['equipment'],
                obj['gifUrl'],
                obj['name'],
                obj['target'],
                obj['intensity'],
                obj['length_of_workout']
              ]
          )
        except psycopg2.errors.UniqueViolation:
            # status values at https://github.com/encode/starlette/blob/master/starlette/status.py
            # response.status_code = status.HTTP_409_CONFLICT
            return {
              "message": "Could not create duplicate category",
            }
        row = cur.fetchone()
        # print(row)
        record = {}
        for i, column in enumerate(cur.description):
          record[column.name] = row[i]
        print(record)
        return record

for exercise in exercises:
  add_workout(exercise)
