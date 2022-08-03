

export async function getWorkoutById(id) {
  const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/${id}`;
      const response = await fetch(url);
      if (response.ok) {
        const data = await response.json();
        // console.log('response', response)
        return data
      }
}


export async function addCoin (user) {
  const userId = user.id;
  const url = `${process.env.REACT_APP_USERS}/users/account/${userId}/`;
  const fetchConfig = {
    method: "put",
    headers: {"Content-Type": "application/json"}
  }
  const response = await fetch(url, fetchConfig);
  if (response.ok) {
    console.log("Success - Added one coin")
  } else {
    console.log("No success - it did not work")
  }
}


export async function addCompletedWorkout (winnerObj, user) {
  console.log('workoutId', winnerObj.id)
  const data = {
    "workout_id": winnerObj.id,
    "user": user.id
  }
  console.log(data)
  const urlWK = `${process.env.REACT_APP_USERS}/users/account/completed/`;
  const fetchConfigWK ={
    method: "POST",
    headers: {"Content-Type": "application/json"},
    // credentials: "include",
    body: JSON.stringify(data)
  }
  // console.log('fetchConfig', fetchConfigWK)
  const responseWK = await fetch(urlWK, fetchConfigWK);
  if (responseWK.ok) {
    // console.log("Success - Added to list")
    console.log('success', responseWK)
  } else {
    // console.log("No - success it did not work")
    console.log('failed', responseWK)
    alert("Workout already in user\'s completed workout history.")
  }
}
