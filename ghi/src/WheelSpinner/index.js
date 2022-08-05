import React, { useState, useContext } from 'react'
import Button from 'react-bootstrap/Button'
import Modal from 'react-bootstrap/Modal'
import {Link} from 'react-router-dom'
import {AuthContext} from '../Auth.js'

import WheelComponent from 'react-wheel-of-prizes'
import '../react-wheel-of-prizes/index.css' 
import WorkoutDetailView from '../WorkoutDetailView'
import SignupModal from '../SignupModal/index.js'
import { addCoin, addCompletedWorkout } from '../helpers/Workouts.js'


const WheelSpinner = ({segments}) => {
  const {user, token} = useContext(AuthContext)
  // console.log(segments)
  let [winnerObj, setWinner] = useState(null)
  const [show, setShow] = useState(false)
  const handleClose = () => setShow(false)
  const handleShow = () => setShow(true)
  const [popup, setPopup] = useState(false)
  const handlePopupClose = () => setPopup(false)

  const nameArr = []
  segments.map(el => nameArr.push(el.name.toUpperCase()))

  const palate = [ 
    "#03ecfc",/*cyan*/
    "#38a874",/*ocean green*/
    "##03fc80",/*spring green*/
    "#fcb103",/*yellow sea*/
    "#fc03b5",/*shocking pink*/
    "#0066ff",
    "#8000ff",
    "#00bfff",
  ]
  const colorFromPalate = () => palate[Math.floor(Math.random() * palate.length)]

  const color = () => "#"+Math.floor(Math.random()* 16777215).toString(16)
  const segColors = new Array(nameArr.length).fill("").map(colorFromPalate)
  //  console.log(segColors)
  
  const onFinished = (winner) => {
    let winnerExercise = segments.filter(el => el.name === winner.toLowerCase())
    let winnerId = winnerExercise[0].id
    let winnerFilter = segments.filter(el => el.id === winnerId)
    setWinner(winnerFilter[0])
    handleShow()
  }

  const completeWorkout = (e) => {
    e.preventDefault()
    addCoin(user).then(setPopup(true))
    addCompletedWorkout(winnerObj, user)
    handleClose()
  }

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
      
      <Modal show={popup}>
        <Modal.Header>
          <Modal.Title>You earned a coin!</Modal.Title>
          <Button variant="primary" onClick={handlePopupClose}>Close</Button>
        </Modal.Header>
      </Modal>    
      
      <Modal className='test' show={show} onHide={handleClose}>
        <Modal.Header closeButton>
          <Modal.Title>
            <p><b><em>{token ? 'AHOY!!!' : 'ARGH!!!'}</em></b></p>
            <p>{token && 'Here is your randomly selected workout!'}</p>
          </Modal.Title>
        </Modal.Header>
        <Modal.Body>
          {token ? (<WorkoutDetailView workoutDetails={winnerObj}/>) : (<SignupModal />)}
        </Modal.Body>
        {token &&(<Modal.Footer>
          <Button variant="secondary" onClick={completeWorkout} >
            Complete Workout
          </Button>
          <Link to="/profile" >
            <Button variant="primary" >
              User Profile
            </Button>
          </Link>
        </Modal.Footer>)}
      </Modal>
    </>
  )
}

export default WheelSpinner;