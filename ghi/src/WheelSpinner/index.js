import React, { useState, useContext } from 'react'
import Button from 'react-bootstrap/Button'
import Modal from 'react-bootstrap/Modal'
import {Link} from 'react-router-dom'
import {AuthContext} from '../Auth.js'

import WheelComponent from 'react-wheel-of-prizes'
import '../react-wheel-of-prizes/index.css' 
import WorkoutDetailView from '../WorkoutDetailView'
import SignupModal from '../SignupModal/index.js'


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
  segments.map(el => nameArr.push(el.name))

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
    let winnerExercise = segments.filter(el => el.name === winner)
    let winnerId = winnerExercise[0].id
    let winnerFilter = segments.filter(el => el.id === winnerId)
    setWinner(winnerFilter[0])
    handleShow()
  }

  const addCoin = async () => {
    const userId = user.id;
    const url = `${process.env.REACT_APP_USERS}/users/account/${userId}/`;
    const fetchConfig = {
      method: "put",
      headers: {"Content-Type": "application/json"}
    }
    const response = await fetch(url, fetchConfig);
    if (response.ok) {
      setPopup(true)
      console.log("Success - Added one coin")
    } else {
      console.log("No success - it did not work")
    }
  }

  const addCompletedWorkout = async () => {
    console.log('workoutId', winnerObj.id)
    const data = {
      "workout_id": winnerObj.id,
      "user": user.id
    }
    console.log(data)
    const urlWK = `${process.env.REACT_APP_USERS}/users/account/completed/`;
    const fetchConfigWK ={
      method: "POST",
      headers: {"Content-Type": "application/json"},
      // credentials: "include",
      body: JSON.stringify(data)
    }
    // console.log('fetchConfig', fetchConfigWK)
    const responseWK = await fetch(urlWK, fetchConfigWK);
    if (responseWK.ok) {
      // console.log("Success - Added to list")
      console.log('success', responseWK)
    } else {
      // console.log("No - success it did not work")
      console.log('failed', responseWK)
      alert("Exercise already in user\'s completed workout history.")
    }

  }

  const completeWorkout = (e) => {
    e.preventDefault()
    // addCoin()
    // console.log('userId', user.id)
    // console.log('userCoins', user.coins)
    addCompletedWorkout()
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
      
      <Modal show={show} onHide={handleClose}>
        <Modal.Header closeButton>
          <Modal.Title>
            {token ? 'AHOY! Here is your randomly selected workout!' : 'ARGH!!!'}
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