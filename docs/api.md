(will contain the documentation for the APIs that you think you'll need to make the project work;  list each of the RESTful endpoints)

# APIs

# get a workout
(HTTP method;
the Path;
Parameters for the json;
The values that get returned;
Written explanation of what the api function should do)

* **Method**: `GET`
* **Path**: /api/workouts

Output:

```json
{
  "bodyPart": str,
	"equipment": str,
	"gifUrl": str,
	"id": int,
	"name": str,
	"target": str
}
```

