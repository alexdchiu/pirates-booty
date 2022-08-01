import React, { useState }  from 'react'


function WorkoutDetailView({workoutDetails}) {

return (
  <div className="card">
    <div>
      <h1>{workoutDetails.name}</h1>
    </div>
    <img className="card-img-top" src={workoutDetails.gif_url} alt="loading..."/>
    <div className="card-body">
      <p className="card-text">Targeted Muscle: {workoutDetails.target}</p>
      <p className="card-text">Necessary Equipment: {workoutDetails.equipment}</p>
      <p className="card-text">Workout Intensity: {workoutDetails.intensity}</p>
      <p className="card-text">Length of Workout: {workoutDetails.length_of_workout}</p>
    </div>
  </div>
);
}

export default WorkoutDetailView