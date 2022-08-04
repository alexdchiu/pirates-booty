import React, {useState, useContext}  from 'react'
import {useNavigate} from "react-router-dom"
import {AuthContext} from '../Auth'


export function EditProfile (){
    const {user} = useContext(AuthContext)
    console.log(user)
    const navigate= useNavigate()
    const [values, setValues] = useState ({
        first_name:"",
        last_name: "",
        email: "",
        picture_url: "",
    })

    console.log(user)


    const handleChange = e => {
        setValues({
            ...values,
            [e.target.name]: e.target.value
        }); 
    };

    const handleFormSubmit = async (e) => {
        e.preventDefault();
        updateUser()
    }

    const updateUser = async () => {
        const userId = user.id
        const url = `${process.env.REACT_APP_USERS}/users/account/details/${userId}/`;
        const data = {...values}
        const fetchConfig = {
            method: "put",
            body: JSON.stringify(data),
            headers: {
                'Content-Type': 'application/json',
            },
        }
        const response = await fetch(url, fetchConfig);
        if(response.ok){
            const updateAccount = await response.json();
            // console.log(updateAccount);
            setValues(updateAccount)
            navigate('/profile/')
        }
        else if (!response.ok){
            const message = ` An error: ${response.status} - ${response.statusText}`;
            throw new Error(message);
        }
    }
    
    return(
    <div className="profile-container">
  <div className="main-body">
    <h1>Update Profile</h1>
    <div className="row gutters-sm">

      <div className="col-md-8">
        <div className="card mb-3">
          <div className="card-body">
            <div className="row">
              <div className="col-sm-3">
              <input
              onChange={handleChange}
                type="text"
                name="first_name"
                placeholder="first name"
                defaultValue={user.first_name}
                value={values.first_name} 
                />
              </div>
            </div>
            <br />
            <div className="row">
              <div className="col-sm-3">
              <input
              onChange={handleChange}
                type="text"
                name="last_name"
                placeholder="last name"
                defaultValue={user.last_name}
                value={values.last_name} 
                />
              </div>
            </div>
            <br />
            <div className="row">
              <div className="col-sm-3">
              <input
              onChange={handleChange}
                type="text"
                name="email"
                placeholder="email"
                defaultValue={user.email}
                value={values.email} 
                />
              </div>
            </div>
            <br />
            <div className="row">
              <div className="col-sm-3">
              <input
              onChange={handleChange}
                type="text"
                name="picture_url"
                placeholder="picture URL"
                defaultValue={user.picture_url}
                value={values.picture_url} 
                />
              </div>
            </div>
            <br></br>
            <div className="row">
              <div className="col-sm-12">
                <button
                onClick={handleFormSubmit}
                  className="btn btn-info"
                  target="__blank"
                >UPDATE
                </button>
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

