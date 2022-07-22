import React, { useState } from 'react'
import validation from "./Validation"
import { Link, Navigate } from "react-router-dom"


class LoginForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: '',
            password: ''
        }
        this.handleSubmit = this.handleSubmit.bind(this);
    }
    async componentDidMount() {
        const url = 'http://localhost:8001/users/account/';
        const response = await fetch(url);
        if (response.ok) {
            const data = await response.json();
        }
    }
    async handleSubmit(event) {
        event.preventDefault();
        const data = { ...this.state };
        const url = 'http://localhost:8001/users/account/';
        const fetchConfig = {
            method: 'get',
            body: JSON.stringify(data),
            headers: {
                'Content-Type': 'application/json',
            },
        };
        const loginResponse = await fetch(url, fetchConfig);
        if (loginResponse.ok) {
            this.setState({
                username: '',
                password: '',
            })
            const useAudio = new Audio("/assets/sounds/argh.mp3")
            const start = () => {
              useAudio.play();
            }
            <Navigate to="/leaderboard" />;
        }
    }
}





// function LoginForm() {

//     const [values, setValues] = useState({
//         username: "",
//         password: "",
//     })

//     const [errors, setErrors] = useState({})

//     const handleStateChange = e => {
//         setValues({
//             ...values,
//             [e.target.name]: e.target.value
//         });
//     };

//     const handleSubmit = e => {
//         e.preventDefault()
//         setValues({
//             username: "",
//             password: "",
//         })
//         setErrors(validation(values));
//         console.log(values);
//     };

//     // const playAudio = () => {
//     //     if response is ok, play sounds
//     // }
//     const useAudio = new Audio("/assets/sounds/argh.mp3")
//     const start = () => {
//         useAudio.play();
//         <Navigate to="/leaderboard" />;
//     }

//     return (
//         <div className="login-container">
//             <div className="form-content-right">
//                 <form onSubmit={handleSubmit} className="form">
//                     <img src='/assets/images/pirate.png' alt="pirates" width="150px"></img>
//                     <h1> ARGH! </h1>
//                     <h1>WELCOME BACK PIRATE</h1>
//                     <div className="form-inputs">
//                         <label htmlFor="username" className="form-label">

//                         </label>
//                         <input
//                             onChange={handleStateChange}
//                             type="text"
//                             name="username"
//                             className="form-input"
//                             placeholder="username"
//                             value={values.username}
//                         />
//                         {errors.username && <p className="error">{errors.username}</p>}

//                     </div>
//                     <div className="form-inputs">
//                         <label htmlFor="password" className="form-label">


//                         </label>
//                         <input
//                             onChange={handleStateChange}
//                             type="password"
//                             name="password"
//                             className="form-input"
//                             placeholder="password"
//                             value={values.password}
//                         />
//                         {errors.password && <p className="error">{errors.password}</p>}

//                     </div>

//                     <button onClick={start} className="form-input-btn" type="submit">Login</button>
//                     <span className="form-input-login">Don't have an account? Sign up <Link to="/signup/new">here</Link></span>
//                 </form>
//             </div >
//         </div >
//     )
// }
// export default LoginForm