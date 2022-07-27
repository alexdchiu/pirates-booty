import React from "react";
import { useAuthContext } from '../Auth';

// edit user data
// get completed workouts data

// create a new field on user profile to have list of workouts
// create functionality on the individual workout to complete workout
// upon completion -> add workout id to list on user profile





function UserProfileView (){
    const { user, token } = useAuthContext();
    console.log('user', user)
    console.log('token', token)
    const newLocal = "breadcrumb-item";
    return(
        <div className="container">
  <div className="main-body">
    {/* Breadcrumb */}
    <nav aria-label="breadcrumb" className="main-breadcrumb">
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
    </nav>
    {/* /Breadcrumb */}
    <div className="row gutters-sm">
      <div className="col-md-4 mb-3">
        <div className="card">
          <div className="card-body">
            <div className="d-flex flex-column align-items-center text-center">
              <img
                src="https://bootdey.com/img/Content/avatar/avatar7.png"
                alt="Admin"
                className="rounded-circle"
                width={150}
              />
              <div className="mt-3">
                <h4>{user.first_name} {user.last_name}</h4>
                {/* <p className="text-secondary mb-1">Full Stack Developer</p> */}
                <p className="text-muted font-size-sm">
                  {user.email}
                </p>
                <p className="text-muted font-size-sm">
                  Booty Coins Earned: {user.coins}
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="col-md-8">
        <div className="card mb-3">
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
        </div>
        <div className="row gutters-sm">
          <div className="col-sm-12 mb-3">
            <div className="card h-100">
              <div className="card-body">
                <h6 className="d-flex align-items-center mb-3">
                  <i className="material-icons text-info mr-2">Workout History</i>
                </h6>
                <small>Web Design</small>
                <div className="progress mb-3" style={{ height: 5 }}>
                  <div
                    className="progress-bar bg-primary"
                    role="progressbar"
                    style={{ width: "80%" }}
                    aria-valuenow={80}
                    aria-valuemin={0}
                    aria-valuemax={100}
                  />
                </div>
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