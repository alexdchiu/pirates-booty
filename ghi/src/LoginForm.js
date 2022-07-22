import React, {useState, useEffect} from 'react'
// import validation from "./Validation"
import {Link, Navigate} from "react-router-dom"
import { useToken } from './Auth'
import {useAuthContext} from './Auth'

function LoginForm (){
    const [token_, login, logout] = useToken();
    const [user, setUser] = useState(null);
    const [username, setUsername] = useState("")
    const [password, setPassword] =  useState("")
    const [errors, setErrors] = useState({})
    const { token } = useAuthContext();

    // const handleStateChange = e => {
    //     setValues({
    //         ...values,
    //         [e.target.name]: e.target.value
    //     });
    // };

    const handleSubmit = async e => {
        e.preventDefault()
        // setErrors(validation(values))
        console.log('login inside', login)
        setErrors(await login(username, password))

        };
console.log('login', login)
    // ** Play audio with button**
    // const useAudio = new Audio("/assets/sounds/argh.mp3")
    // const start = () => {
    //     useAudio.play()
    // }

    return (
        <div className="login-container">  
        <div className="form-content-right">
        <form onSubmit={handleSubmit} className="form">
        <img src= '/assets/images/pirate.png' alt="pirates" width="150px"></img>
            <h1> ARGH! </h1>
            <h1>WELCOME BACK PIRATE</h1>
            <div className="form-inputs">
            <label htmlFor="username" className="form-label">
      
            </label>
                <input 
                onChange={(e)=>setUsername(e.target.value)}
                type="text"
                name="username"
                className="form-input"
                placeholder="username"
                value={username}
                />
           {/* {errors.username && <p className="error">{errors.username}</p>} */}
            </div>
            <div className="form-inputs">
            <label htmlFor="password" className="form-label">
               
            </label>
                <input
                onChange={(e)=>setPassword(e.target.value)}
                type="password"
                name="password"
                className="form-input"
                placeholder="password"
                value={password}
           />
            {/* {errors.password && <p className="error">{errors.password}</p>} */}
            </div>
            <button className="form-input-btn" type="submit">Login</button>
            {/* <button onClick={start} className="form-input-btn" type="submit">Login</button> */}
            <span className="form-input-login">Don't have an account? Sign up <Link to="/signup/new">here</Link></span>
        </form> 
    </div>
    </div>
    )
}

export default LoginForm