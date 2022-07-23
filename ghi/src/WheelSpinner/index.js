import React, { useState } from 'react'
import Button from 'react-bootstrap/Button'
import Modal from 'react-bootstrap/Modal'
import {Link} from 'react-router-dom'

import WheelComponent from 'react-wheel-of-prizes'
import '../react-wheel-of-prizes/index.css' 
import WorkoutDetailView from '../WorkoutDetailView'


const WheelSpinner = ({segments}) => {
  // console.log(segments)
  let [winnerObj, setWinner] = useState(null)
  const [show, setShow] = useState(false)
  const handleClose = () => setShow(false)
  const handleShow = () => setShow(true)

  const nameArr = []
  segments.map(el => nameArr.push(el.name))

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
    let winnerExercise = segments.filter(el => el.name === winner)
    let winnerId = winnerExercise[0].id
    let winnerFilter = segments.filter(el => el.id === winnerId)
    setWinner(winnerFilter[0])
    handleShow()
  }

  // console.log(winnerObj)

  return (
    <>
      <WheelComponent
        segments={nameArr}
        segColors={segColors}
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
      <Modal show={show} onHide={handleClose}>
        <Modal.Header closeButton>
          <Modal.Title>AHOY! Here is your randomly selected workout!</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <WorkoutDetailView workoutDetails={winnerObj}/>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleClose}>
            Skip Workout
          </Button>
          <Button variant="secondary" onClick={handleClose}>
            Save Workout
          </Button>
          <Button variant="secondary" onClick={handleClose}>
            Complete Workout
          </Button>
          <Link to="/profile" >
            <Button variant="primary" >
              User Profile
            </Button>
          </Link>
        </Modal.Footer>
      </Modal>
    </>
  )
}

export default WheelSpinner;