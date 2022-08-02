import WheelSpinner from './WheelSpinner'
import { useEffect, useState } from 'react';

function MainPage() {
  let [exercises, setExercises] = useState([])

  useEffect(() => {
    async function getExercises() {
      const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/guest/random-wheel`;
      const response = await fetch(url);
      if (response.ok) {
        const data = await response.json();
        // console.log('response', response)
        setExercises(data);
      }
    }
    getExercises();
  }, [])


  return (
    <div className="px-4 py-5 my-5 text-center">
      <div className="col-lg-3 mx-auto">
        <h1 className="display-5 fw-bold">Pirates Booty</h1>
        <p className="lead mb-4">
          Spin to choose your workout
        </p>
        {exercises.length > 0 ? <WheelSpinner segments={exercises} /> : null}
      </div>
    </div>
  );
}


export default MainPage;