import React, {useContext, useState} from 'react'
import WorkoutDetailView from './WorkoutDetailView';
import {AuthContext} from './Auth.js'
import Modal from 'react-bootstrap/Modal'
import Button from 'react-bootstrap/Button'
import SignupModal from './SignupModal/index.js'
import {Link} from 'react-router-dom'
import { addCoin, addCompletedWorkout } from './helpers/Workouts';

function WorkoutsList({exercises}) {
  const {user, token} = useContext(AuthContext)
  const [popup, setPopup] = useState(false)
  const handleClose = () => setShow(false)
  const handleShow = (exercise) => {
    setShow(true)
    setSelectedExercise(exercise)
  }
  const [show, setShow] = useState(false)
  const handlePopupClose = () => setPopup(false)

  const [selectedExercise, setSelectedExercise] = useState()

  const completeWorkout = async (e) => {
    e.preventDefault()
    addCoin(user).then(setPopup(true))
    addCompletedWorkout(selectedExercise, user)
    handleClose()
  }

  return (
    <div className="outer-div">
      <div className="list-container">
          {/* <h4 className>Exercises</h4> */}
          <table className="table table-striped">
            <thead>
              <tr className="WorkoutsList">Exercises</tr>
            </thead>
            <thead>
              <tr>
                <th>Name (Click for workout details)</th>
                <th>Target</th>
                <th>Equipment</th>
                <th>Intensity</th>
                <th>Length of Workout</th>
              </tr>
            </thead>
            <tbody>
              {
                exercises.map(filtered => {
                  return(
                    <tr key={filtered.id}>
                      <td onClick={() => handleShow(filtered)} className="text-primary text-capitalize">{filtered.name}</td>
                      <td className="text-capitalize">{filtered.target}</td>
                      <td className="text-capitalize">{filtered.equipment}</td>
                      <td className="text-capitalize">{filtered.intensity}</td>
                      <td className="text-capitalize">{filtered.length_of_workout} mins</td>
                    </tr>
                  )
                })
              }
            </tbody>
          </table>
      </div>
      <Modal show={popup}>
        <Modal.Header>
          <Modal.Title>You earned a coin!</Modal.Title>
          <Button variant="primary" onClick={handlePopupClose}>Close</Button>
        </Modal.Header>
      </Modal>    
      
      <Modal show={show} onHide={handleClose}>
        <Modal.Header closeButton>
          <Modal.Title>
            AHOY! Here is your selected workout!
          </Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <WorkoutDetailView workoutDetails={selectedExercise}/>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={completeWorkout} >
            Complete Workout
          </Button>
          <Link to="/profile" >
            <Button variant="primary" >
              User Profile
            </Button>
          </Link>
        </Modal.Footer>
      </Modal>
    </div>
  )
}

export default WorkoutsList