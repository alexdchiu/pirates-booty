import '../App.css'
function WorkoutDetailView({workoutDetails}) {

return (
  <div className="card" style={{flexDirection: 'row', padding: '2rem'}}>
    <div className='col-6'>
      <h2 className="text-capitalize">{workoutDetails.name}</h2>
      <div className="card-body" style={{padding: '3rem'}}>
        <p className="card-text text-capitalize">Targeted Muscle: {workoutDetails.target}</p> 
        <p className="card-text text-capitalize">Necessary Equipment: {workoutDetails.equipment}</p>
        <p className="card-text text-capitalize">Workout Intensity: {workoutDetails.intensity}</p>
        <p className="card-text">Length of Workout: {workoutDetails.length_of_workout} mins</p>
      </div>
    </div>
    <div className="col-6">
      <img className="card-img-top" src={workoutDetails.gif_url} alt="loading..."/>
    </div>
    
    
  </div>
);
}

export default WorkoutDetailView