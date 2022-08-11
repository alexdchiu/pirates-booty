import React, {useEffect, useState } from "react";
import ListGroupItem from "react-bootstrap/esm/ListGroupItem";
import WorkoutDetailView from "../WorkoutDetailView";
import ListGroup from 'react-bootstrap/ListGroup';
import Modal from 'react-bootstrap/Modal'
import Button from 'react-bootstrap/Button'
import { useAuthContext, getUserData } from '../Auth';
import { addCoin, addCompletedWorkout  } from "../helpers/Workouts";
import {Link} from 'react-router-dom'



function UserProfileView (){
    const { user, token } = useAuthContext();
    const [userData, setUserData] = useState(null);
    const [completedWorkouts, setCompletedWorkouts] = useState([])
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
    
    async function getUserData(username) {
      const usernameurl = `${process.env.REACT_APP_USERS}/users/account/${username}`;
      try {
        const response = await fetch(usernameurl, {
          method: "get",
          credentials: "include",
        });
        if (response.ok) {
          const data = await response.json();
          setUserData(data)
          const ids = await getUserCompletedWorkouts(data)
            .then((res) => fetchUserCompletedWorkouts(res))
        }
      } catch (e) {}
      return false
    }

    async function getUserCompletedWorkouts(o) {
      const url = `${process.env.REACT_APP_USERS}/users/account/completed/`;
      const fetchConfig = {
        method: "GET",
      }
      const response = await fetch(url, fetchConfig)
      if (response.ok) {
        const data = await response.json()
        var filteredWorkouts = []
        data.filter(workout => {
          if (workout.user.id === o.id) {
            filteredWorkouts.push(workout)
          }
        })
        return filteredWorkouts
      }
      else {
        console.log('completed workout fetch failed')
      }
    }
    

    let fetchUserCompletedWorkouts = async (lst) => {
      var workoutIDs = []
      lst?.forEach(obj => {
        workoutIDs.push(obj.workout_id)
      })
      
      const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/completed_workouts`;
      const fetchConfig = {
      method: "POST",
      headers: {"Content-Type": "application/json"},
      body: JSON.stringify(workoutIDs)
      }
      fetch(url, fetchConfig)
      .then((res) => {
        return res.json()
      })
      .then((resData) => {
        var completedWorkoutsAndDates = []
        var listOfWorkouts = resData.exercises
        for (var i = 0; i < listOfWorkouts.length; i++) {
          completedWorkoutsAndDates.push({
            'workout': listOfWorkouts[i],
            'dateCompleted': lst[i].date.substring(0,10)
            // 'dateCompleted': lst[i].date
          })
          // console.log('completedWorkoutsAndDates', completedWorkoutsAndDates)
        }
        setCompletedWorkouts(completedWorkoutsAndDates)
      })
    }
    
    // console.log('userCompleted', completedWorkouts)

    useEffect(
      () => {
        console.log('user', user)
        getUserData(user.username)
      }, []
    )


    return(
        <div className="profile-container">
          <div className="main-body">
            {/* Breadcrumb */}
            {/* <nav aria-label="breadcrumb" className="main-breadcrumb">
              <ol className="breadcrumb">
                <li className="breadcrumb-item">
                  <a href="index.html">Home</a>
                </li>
                <li className="breadcrumb-item">
                  <a href="javascript:void(0)">User</a>
                </li>
                <li className="breadcrumb-item active" aria-current="page">
                  User Profile
                </li>
              </ol>
            </nav> */}
            {/* /Breadcrumb */}
            <div className="row profile gutters-sm">
              <div className="col-md-4 mb-3">
                <div className="card">
                  <div className="card-body">
                    <div className="d-flex flex-column align-items-center text-center">
                      <img
                        src={userData?.picture_url === null ? 'https://shortpixel.com/img/robot_lookleft_wink_big.png': userData?.picture_url}
                        alt="Please edit your profile to include a picture."
                        className="rounded-circle"
                        width={150}
                      />
                      <div className="mt-3">
                        <h4>{userData?.first_name} {userData?.last_name}</h4>
                        {/* <p className="text-secondary mb-1">Full Stack Developer</p> */}
                        <p className="text-muted font-size-sm">
                          {userData?.email}
                        </p>
                        <p className="text-muted font-size-sm">
                          🪙 Booty Coins Earned: {userData?.coins}
                        </p>
                      </div>
                      <div className="row">
                      <div className="col-sm-12">
                        <button className="btn btn-info" target="__blank">
                          <Link className="link" to="/profile/edit/">Edit</Link>
                        </button>
                        <span> </span>
                        <button className="btn btn-info" target="__blank">
                          <Link className="link" to="/profile/delete/">Delete</Link>
                        </button>
                      </div>
                    </div>
                    </div>
                  </div>
                </div>
              </div>
              <div className="col-md-8">
                {/* <div className="card mb-3">
                  <div className="card-body">
                    <div className="row">
                      <div className="col-sm-3">
                        <h6 className="mb-0">Full Name</h6>
                      </div>
                      <div className="col-sm-9 text-secondary">Kenneth Valdez</div>
                    </div>
                    <hr />
                    <div className="row">
                      <div className="col-sm-3">
                        <h6 className="mb-0">Email</h6>
                      </div>
                      <div className="col-sm-9 text-secondary">fip@jukmuh.al</div>
                    </div>
                    <hr />
                    <div className="row">
                      <div className="col-sm-3">
                        <h6 className="mb-0">Phone</h6>
                      </div>
                      <div className="col-sm-9 text-secondary">(239) 816-9029</div>
                    </div>
                    <hr />
                    <div className="row">
                      <div className="col-sm-3">
                        <h6 className="mb-0">Mobile</h6>
                      </div>
                      <div className="col-sm-9 text-secondary">(320) 380-4539</div>
                    </div>
                    <hr />
                    <div className="row">
                      <div className="col-sm-3">
                        <h6 className="mb-0">Address</h6>
                      </div>
                      <div className="col-sm-9 text-secondary">
                        Bay Area, San Francisco, CA
                      </div>
                    </div>
                    <hr />
                    <div className="row">
                      <div className="col-sm-12">
                        <a
                          className="btn btn-info "
                          target="__blank"
                          href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills"
                        >
                          Edit
                        </a>
                      </div>
                    </div>
                  </div>
                </div> */}
                <div className="row history gutters-sm">
                  <div className="col-sm-12 mb-3">
                    <div className="card h-100">
                      <div className="card-body">
                        <h6 className="d-flex align-items-center mb-3">
                          <i className="material-icons text-info mr-2">{userData?.first_name}'s Workout History</i>
                        </h6>
                        <small>(Click a workout for details)</small>
                        <div className="progress mb-3" style={{ height: 5 }}>
                          <div
                            className="progress-bar bg-primary"
                            role="progressbar"
                            style={{ width: "100%" }}
                            aria-valuenow={80}
                            aria-valuemin={0}
                            aria-valuemax={100}
                          />
                        </div>
                        <div>
                          <ListGroup>
                            {completedWorkouts.map(workout => {
                              return (
                                <ListGroupItem onClick={() => handleShow(workout.workout)} key={workout.workout.id} className="text-capitalize">{workout.workout.name} 
                                  <p><small><i>
                                    (Originally Completed: {workout.dateCompleted})
                                  </i></small></p>
                                </ListGroupItem>
                              )
                            })}
                          </ListGroup>
                        </div>
                        <Modal show={popup}>
                          <Modal.Header>
                            <Modal.Title>You earned a coin!</Modal.Title>
                            <Button variant="primary" onClick={handlePopupClose}>Close</Button>
                          </Modal.Header>
                        </Modal>    
                        
                        <Modal className='test' show={show} onHide={handleClose} style={{justifyContent: 'center', textAlign: 'center'}}>
                          <Modal.Header >
                            <Modal.Title >
                              {user.first_name}'s Completed Workout Details
                            </Modal.Title>
                          </Modal.Header>
                          <Modal.Body>
                            <WorkoutDetailView workoutDetails={selectedExercise}/>
                          </Modal.Body>
                          <Modal.Footer style={{justifyContent: 'center'}}>
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
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    )
}

export default UserProfileView;