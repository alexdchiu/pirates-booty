(will contain the documentation for the APIs that you think you'll need to make the project work;  list each of the RESTful endpoints)

# APIs


## create user profile
* **Method**: `POST`
* **Path**: /api/user/create

Input:

```json
{
	"username": str,
	"password": str,
	"email": str,
	"first_name": str,
	"last_name": str,
	"birthdate": date,
}
```

Allow users to create a new profile.


## user profile view
* **Method**: `GET`
* **Path**: /api/user/profile

Output:

```json
{
	"username": str,
	"password": str,
	"email": str,
	"first_name": str,
	"last_name": str,
	"birthdate": date,
	"workouts_completed": list,
	"liked_workouts": list,
	"workouts_disliked": list,
	"booty_points": int,
}
```

Allow users to see their profile details and lists of workouts completed, workouts they like, and hide workouts they do not want to see. Also allow users to see how many booty points they've accumulated to date.


## user spin the wheel for workout

* **Method**: `GET`
* **Path**: /api/user/workouts/wheel

Input:

```json
{
  "bodyPart": str | none,
	"intensity": int | none,
	"length_of_workout": int | none,
}
```


Output:

```json
{
  "bodyPart": str,
	"equipment": str,
	"gifUrl": str,
	"id": int,
	"name": str,
	"target": str,
	"intensity": int,
	"length_of_workout": int,
	"likes": int
}
```

Allow users to spin a wheel to get a random workout based on filter of bodyPart, intensity and length_of_workout.


## user view of workouts list

* **Method**: `GET`
* **Path**: /api/user/workouts/list

Input:

```json
{
  "bodyPart": str | none,
	"intensity": int | none,
	"length_of_workout": int | none,
}
```

Output:

```json
{
  "bodyPart": str,
	"equipment": str,
	"gifUrl": str,
	"id": int,
	"name": str,
	"target": str,
	"intensity": int,
	"length_of_workout": int,
	"likes": int
}
```

Allow users to see list of workouts to pick from


## user like or do not show workout
* **Method**: `PUT`
* **Path**: /api/user/workouts/like_or_do_not_show

Input:

```json
{
	"liked_workout": bool,
	"do_not_show_workout": bool,
}
```

Allow users to say they liked a workout or if they do not want to see it anymore.


## guest spin the wheel for workout

* **Method**: `GET`
* **Path**: /api/workouts/wheel

Output:

```json
{
  "bodyPart": str,
	"id": int,
	"name": str,
	"target": str,
	"intensity": int,
	"length_of_workout": int,
	"likes": int
}
```

Allow guests to spin a wheel to get a random workout based on filter of bodyPart, intensity and length_of_workout. Does not share GIF so guests do not know what the actual workout is.


## workout detail view

* **Method**: `GET`
* **Path**: /api/user/workouts/id:pk

Input:
```json
{
	"id": int,
}
```

Output:

```json
{
  "bodyPart": str,
	"equipment": str,
	"gifUrl": str,
	"id": int,
	"name": str,
	"target": str,
	"intensity": int,
	"length_of_workout": int,
	"likes": int
}
```

Allow users to see details of a workout.