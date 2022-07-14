import React, {useState} from 'react'
import validation from "./Validation"
import {Link} from "react-router-dom"

function LoginForm (){
    const [values, setValues] = useState({
        username:"",
        password:"",
    })

    const [errors, setErrors] = useState({})

    const handleStateChange = e => {
        setValues({
            ...values,
            [e.target.name]: e.target.value
        });
    };

    const handleSubmit = e => {
        e.preventDefault()
        setValues({ 
        username: "",
        password: "",})
        setErrors(validation(values))
        };

    return (
        <div className="login-container">  
        <div className="form-content-right">
        <form onSubmit={handleSubmit} className="form">
        <img src="https://cdn-icons.flaticon.com/png/512/1923/premium/1923035.png?token=exp=1657736714~hmac=80cae3d0cc89ee93299448495dbd8af1" alt="pirates" width="150px"></img>
            <h1> ARGH! </h1>
            <h1>WELCOME BACK PIRATE</h1>
            <div className="form-inputs">
            <label htmlFor="username" className="form-label">
      
            </label>
                <input 
                onChange={handleStateChange}
                type="text"
                name="username"
                className="form-input"
                placeholder="username"
                value={values.username}
                />
           {errors.username && <p className="error">{errors.username}</p>}
            </div>
            <div className="form-inputs">
            <label htmlFor="password" className="form-label">
               
            </label>
                <input
                onChange={handleStateChange}
                type="password"
                name="password"
                className="form-input"
                placeholder="password"
                value={values.password}
           />
            {errors.password && <p className="error">{errors.password}</p>}
            </div>
           
            <button className="form-input-btn" type="submit">Login</button>
            <span className="form-input-login">Don't have an account? Sign up <Link to="/signup/new">here</Link></span>
        </form>
    </div>
    </div>
    )
}

export default LoginForm