import React, { useState }  from 'react'


function WorkoutDetailView({workoutDetails}) {

return (
  <div className="card">
    <div>
      <h1>{workoutDetails.name}</h1>
    </div>
    <img className="card-img-top" src={workoutDetails.gif_url} alt="loading..."/>
    <div className="card-body">
      <p className="card-text">{workoutDetails.target}</p>
      <p className="card-text">{workoutDetails.body_part}</p>
      <p className="card-text">{workoutDetails.equipment}</p>
      <p className="card-text">{workoutDetails.intensity}</p>
      <p className="card-text">{workoutDetails.length_of_workout}</p>
    </div>
  </div>
);
}

export default WorkoutDetailView