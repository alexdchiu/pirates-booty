import WheelSpinner from './WheelSpinner'
import { useEffect, useState } from 'react';

// import { useEffect } from "react";

// const exercises = [
//   {
//     "bodyPart": "waist",
//     "equipment": "body weight",
//     "gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/0001.gif",
//     "id": "0001",
//     "name": "3/4 sit-up",
//     "target": "abs"
//   },
//   {
//     "bodyPart": "waist",
//     "equipment": "body weight",
//     "gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/0002.gif",
//     "id": "0002",
//     "name": "45° side bend",
//     "target": "abs"
//   },
//   {
//     "bodyPart": "waist",
//     "equipment": "body weight",
//     "gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/0003.gif",
//     "id": "0003",
//     "name": "air bike",
//     "target": "abs"
//   },
//   {
// 		"bodyPart": "upper legs",
// 		"equipment": "body weight",
// 		"gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/1512.gif",
// 		"id": "1512",
// 		"name": "all fours squad stretch",
// 		"target": "quads"
// 	},
// 	{
// 		"bodyPart": "waist",
// 		"equipment": "body weight",
// 		"gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/0006.gif",
// 		"id": "0006",
// 		"name": "alternate heel touchers",
// 		"target": "abs"
// 	},
// 	{
// 		"bodyPart": "back",
// 		"equipment": "cable",
// 		"gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/0007.gif",
// 		"id": "0007",
// 		"name": "alternate lateral pulldown",
// 		"target": "lats"
// 	},
// ]

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
      <h1 className="display-5 fw-bold">Pirates Booty</h1>
      <div className="col-lg-6 mx-auto">
        <p className="lead mb-4">
          Spin to choose your workout
        </p>
        {exercises.length > 0 ? <WheelSpinner segments={exercises} /> : null}
      </div>
    </div>
  );
}


export default MainPage;