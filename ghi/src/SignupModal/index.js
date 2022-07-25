import React, { useState }  from 'react'
import { Link } from 'react-router-dom';
import Button from 'react-bootstrap/Button'

function SignupModal() {

return (
  <div className="card">
    <div>
      <h2>Sign up for our application to get more details!</h2>
    </div>
    <div className="card-body">
    <Link to="/signup/new" >
            <Button variant="primary">
              Sign Up Here
            </Button>
          </Link>
    </div>
  </div>
);
}

export default SignupModal