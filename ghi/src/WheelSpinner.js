import React, { useState } from 'react'

import WheelComponent from 'react-wheel-of-prizes'
import './react-wheel-of-prizes/index.css'
// import getWorkoutById from './helpers/getWorkoutById'

const WheelSpinner = ({segments}) => {
  // console.log(segments)
  let [winnerObj, setWinner] = useState(null)

  const nameArr = []
  const idArr = []
  segments.map(el => nameArr.push(el.name))
  // console.log(nameArr)

  const palate = [ 
    "#03ecfc",/*cyan*/
    "#03dbfc",/*light blue*/
    "#38a874",/*ocean green*/
    "##03fc80",/*spring green*/
    "#fcb103",/*yellow sea*/
    "#fc03b5"/*shocking pink*/
  ]
  const colorFromPalate = () => palate[Math.floor(Math.random() * palate.length)]

  const color = () => "#"+Math.floor(Math.random()* 16777215).toString(16)
  const segColors = new Array(nameArr.length).fill("").map(colorFromPalate)
  //  console.log(segColors)
  
  const onFinished = (winner) => {
    // setResult(winner)
    // console.log(winner)
    let winnerExercise = segments.filter(el => el.name === winner)
    let winnerId = winnerExercise[0].id
    setWinner(segments.filter(el => el.id === winnerId))
  }

  return (
    <>
      <WheelComponent
        segments={nameArr}
        segColors={segColors}
        // winningSegment='won 10'
        onFinished={(winner) => onFinished(winner)}
        primaryColor='black'
        contrastColor='white'
        buttonText='Spin'
        isOnlyOnce={false}
        size={290}
        upDuration={30}
        downDuration={300}
        fontFamily='Arial'
      />
      {winnerObj ? 
        <>
          <p>'Intensity' = {winnerObj[0].intensity}</p>
          <p>'Length of Workout' = {winnerObj[0].length_of_workout}</p>
        </> : null}
    </>
  )
}

export default WheelSpinner;