async function getWorkoutById(id) {
  const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/${id}`;
      const response = await fetch(url);
      if (response.ok) {
        const data = await response.json();
        // console.log('response', response)
        return data
      }
}

export default getWorkoutById