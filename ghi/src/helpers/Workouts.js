

export async function getWorkoutById(id) {
  const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/${id}`;
      const response = await fetch(url);
      if (response.ok) {
        const data = await response.json();
        // console.log('response', response)
        return data
      }
}

export async function completWorkout(id) {
  const url = `${process.env.REACT_APP_USERS}/users/account/complete_workout/${id}`;
  const requestOptions = {
    method: 'PUT',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({id})
  };
  await fetch(url, requestOptions)
    .then(response => response.json())
    .then(data => {console.log(data)})
}
