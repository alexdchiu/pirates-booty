(will contain the documentation for the APIs that you think you'll need to make the project work;  list each of the RESTful endpoints)

# APIs

## get all users

* **Method**: `GET`
* **Path**: /users/account

Output:
```json
{
	"user": [
		{
			"id": int,
			"username": str,
			"email": str,
			"first_name": str,
			"last_name": str,
			"password": str,
			"picture_url": str,
			"coins": int
		},
		{
			"id": int,
			"username": str,
			"email": str,
			"first_name": str,
			"last_name": str,
			"password": str,
			"picture_url": str,
			"coins": int
		}
	]
}
```

- Returns all users.


## create a user

* **Method**: `POST`
* **Path**: /users/account

Input:
```json
{
	"username": str,
	"email": str,
	"password": str,
	"first_name": str,
	"last_name": str
}
```


Output:
```json
{
	"username": str,
	"email": str,
	"password": str,
	"first_name": str,
	"last_name": str
}
```

- Creates a user instance.


## create a user

* **Method**: `POST`
* **Path**: /users/account/<int:pk>

Input:
```json
{
	"first_name": str,
	"last_name": str,
	"email": str,
	"picture_url": str 
}
```


Output:
```json
{
	"username": str,
	"coins": int,
	"picture_url": str,
	"first_name": str,
	"last_name": str
}
```

- Update a user profile.


## delete a user

* **Method**: `DELETE`
* **Path**: /users/account/<int:pk>

- Delete a user profile.


## get users for leaderboard

* **Method**: `GET`
* **Path**: /users/account/leaderboard>


Output:
```json
{
	"username": str,
	"coins": int,
	"picture_url": str,
	"first_name": str,
	"last_name": str
}
```

- Get all users to use to populate leaderboard


## add a coin for a completed workout

* **Method**: `PUT`
* **Path**: /users/account/<int:pk>

Input:
	id: int

Output:
```json
{
	"username": str,
	"coins": int,
	"picture_url": str,
	"first_name": str,
	"last_name": str
}
```

- Add a coin to a user.


## get current user info

* **Method**: `GET`
* **Path**: /users/account/<str:username>

Input:
	username: str

Output:
```json
{
	"id": int,
	"username": str,
	"email": str,
	"first_name": str,
	"last_name": str,
	"coins": int,
	"picture_url": str
}
```

- Get current user data.

## get all completed workouts

* **Method**: `GET`
* **Path**: /users/account/completed

Output:
```json
{
	"workout_id": int,
	"date": str,
	"user": obj
}
```

- Get all instances of completed workouts.


## create a new completed workout

* **Method**: `POST`
* **Path**: /users/account/completed

Input:
```json
{
	"workout_id": int,
	"date": str,
	"user": obj
}
```

Output:
```json
{
	"workout_id": int,
	"date": str,
	"user": obj
}
```

- Create a new instance of a completed workout for a user.


## get all workouts

* **Method**: `GET`
* **Path**: /api/workouts/all

Output:

```json
{
  "id": int,
	"name": str,
	"body_part": str,
	"target": str,
	"equipment": str,
	"intensity": int,
	"length_of_workout": int,
	"gif_url": str
}
```

- Returns all workouts.


## get workout by ID

* **Method**: `GET`
* **Path**: /api/workouts/{id}

Input:

```json
{
  "id": int,
}
```


Output:

```json
{
  "id": int,
	"name": str,
	"body_part": str,
	"target": str,
	"equipment": str,
	"intensity": int,
	"length_of_workout": int,
	"gif_url": str
}
```

- Returns a workout by ID.


## random workouts for spinner wheel

* **Method**: `GET`
* **Path**: /api/workouts/guest/random-wheel



Output:

```json
{
  [
		{"id": int,
		"name": str,
		"body_part": str,
		"target": str,
		"equipment": str,
		"intensity": int,
		"length_of_workout": int,
		"gif_url": str,
		},
		{"id": int,
		"name": str,
		"body_part": str,
		"target": str,
		"equipment": str,
		"intensity": int,
		"length_of_workout": int,
		"gif_url": str,
		}
	]
}
```

- Returns 10 random workouts to populate the spinner wheel. 


## all workouts for given target muscle and equipment

* **Method**: `GET`
* **Path**: /api/workouts/filtered/?target={target}&equipment={equipment}

Input:
 target = str
 equipment = str

Output:

```json
	{
		"exercises": [
			{
				"id": int,
				"name": str,
				"body_part": str,
				"target": str,
				"equipment": str,
				"intensity": int,
				"length_of_workout": int,
				"gif_url": str,
			},
			{
				"id": int,
				"name": str,
				"body_part": str,
				"target": str,
				"equipment": str,
				"intensity": int,
				"length_of_workout": int,
				"gif_url": str,
			}
		]
	}
```

- Returns all workouts for given target and equipment to populate spinner wheel or list.


## all completed workouts for a given user

* **Method**: `POST`
* **Path**: /api/workouts/completed_workouts

Input:
 exercise_ids: list[int]

Output:

```json
	{
		"exercises": [
			{
				"id": int,
				"name": str,
				"body_part": str,
				"target": str,
				"equipment": str,
				"intensity": int,
				"length_of_workout": int,
				"gif_url": str,
			},
			{
				"id": int,
				"name": str,
				"body_part": str,
				"target": str,
				"equipment": str,
				"intensity": int,
				"length_of_workout": int,
				"gif_url": str,
			}
		]
	}
```

- Returns all workouts for a given list of workout IDs.