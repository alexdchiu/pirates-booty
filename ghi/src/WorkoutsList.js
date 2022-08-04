import React, {useContext, useState} from 'react'
import WorkoutDetailView from './WorkoutDetailView';
import {AuthContext} from './Auth.js'
import Modal from 'react-bootstrap/Modal'
import Button from 'react-bootstrap/Button'
import SignupModal from './SignupModal/index.js'
import {Link} from 'react-router-dom'


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
      console.log("No - success it did not work")
    }

    handleClose()
  }

  return (
    <div className="workoutslist-outer-div">
      <div className="workoutslist-container">
          <h4 className>Exercises</h4>
          <table className="table table-striped">
            <thead>
              {/* <tr className="WorkoutsList">Exercises</tr> */}
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
                      <td onClick={() => handleShow(filtered)} className="text-primary">{filtered.name}</td>
                      <td>{filtered.target}</td>
                      <td>{filtered.equipment}</td>
                      <td>{filtered.intensity}</td>
                      <td>{filtered.length_of_workout} mins</td>
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
