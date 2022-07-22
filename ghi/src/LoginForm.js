import React, {useState, useEffect} from 'react'
// import validation from "./Validation"
import {Link, Navigate} from "react-router-dom"
import { useToken } from './Auth'
import {useAuthContext} from './Auth'

function LoginForm (){
    const [login, logout] = useToken();
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

    const handleSubmit = e => {
        e.preventDefault()
        // setValues({ 
        // username: "",
        // password: "",})
        // setErrors(validation(values))
        // setErrors(await login(username, password))

        };

    // ** Play audio with button**
    // const useAudio = new Audio("/assets/sounds/argh.mp3")
    // const start = () => {
    //     useAudio.play()
    // }



    // For Django services, use this one
    // const url = `${process.env.REACT_APP_USERS}/api/tokens/mine/`;

    // For FastAPI services, use this one
    // const tokenUrl = `${process.env.REACT_APP_ACCOUNTS_HOST}/token`;

//     try {
//       const response = await fetch(url, {
//         credentials: "include",
//       });
//       if (response.ok) {
//         const data = await response.json();
//         const token = data.token;
//         // DO SOMETHING WITH THE TOKEN SO YOU CAN USE IT
//         // IN REQUESTS TO YOUR NON-ACCOUNTS SERVICES
//       }
//     } catch (e) {}
//     return false;
//   }
//   let error = await response.json();
//   // DO SOMETHING WITH THE ERROR, IF YOU WANT
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
            <button onClick={(e)=>(token)} className="form-input-btn" type="submit">Login</button>
            {/* <button onClick={start} className="form-input-btn" type="submit">Login</button> */}
            <span className="form-input-login">Don't have an account? Sign up <Link to="/signup/new">here</Link></span>
        </form> 
    </div>
    </div>
    )
}

export default LoginForm