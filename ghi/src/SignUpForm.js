import React, {useState}  from "react"
import validation from "./Validation"
import {Link, useNavigate} from "react-router-dom"

function SignUpForm () {
    const [values, setValues] = useState ({
        username: "",
        password: "",
        first_name:"",
        last_name: "",
        email: "",
    })
    let navigate= useNavigate()
    const [errors, setErrors] = useState({})

    const handleChange = e => {
        setValues({
            ...values,
            [e.target.name]: e.target.value
        }); 
    };
    
    const handleFormSubmit = async (e) => {
        e.preventDefault();
        setErrors(validation(values))
        callAPI()
    }
        
    const callAPI = async () => {
        const data = {...values}
        console.log(data)
        const url = `${process.env.REACT_APP_USERS}/users/account/`;
        const fetchConfig = {
            method: "post",
            body: JSON.stringify(data),
            headers: {
                'Content-Type': 'application/json',
                // credentials: "include",
            },
            
        }
        const response = await fetch(url, fetchConfig);
        if(response.ok){
            const newAccount = await response.json();
            console.log(newAccount);
            setValues({ 
                username: "",
                password: "",
                first_name:"",
                last_name: "",
                email: "",
            })
            navigate('/login')
        }
        else if (!response.ok){
            const message = ` An error: ${response.status} - ${response.statusText}`;
            throw new Error(message);
        }
    }
    
    return (
        <div className="container">
            <div className="form-content-right">
                <form onSubmit={handleFormSubmit} className="form">
                    <img src="/assets/images/spinwheel.png" alt="spinwheel" width="150px"></img>
                    <h1>SIGN UP</h1>
                    <div className="form-inputs">
                        <label htmlFor="username" className="form-label">
                        </label>
                            <input 
                            onChange={handleChange}
                            type="text"
                            name="username"
                            className="form-input"
                            placeholder="username"
                            value={values.username} />
            {errors.username && <p className="error">{errors.username}</p>}
            </div>
            <div className="form-inputs">
            <label htmlFor="password" className="form-label">
               
            </label>
                <input
                onChange={handleChange}
                type="password"
                name="password"
                className="form-input"
                placeholder="password"
                value={values.password} />
             {errors.password && <p className="error">{errors.password}</p>}
            </div>
          
            <div className="form-inputs">
            <label htmlFor="first_name" className="form-label">
              
            </label>
                <input
                onChange={handleChange}
                type="text"
                name="first_name"
                className="form-input"
                placeholder="first name"
                value={values.first_name} />
                {errors.first_name && <p className="error">{errors.first_name}</p>}
            
            </div>
            <div className="form-inputs">
            <label htmlFor="last_name" className="form-label">
              
            </label>
                <input
                onChange={handleChange}
                type="text"
                name="last_name"
                className="form-input"
                placeholder="last name"
                value={values.last_name} />
                {errors.last_name && <p className="error">{errors.last_name}</p>}
           
            </div>
            <div className="form-inputs">
            <label htmlFor="email" className="form-label">
                
            </label>
                <input
                onChange={handleChange}
                type="email"
                name="email"
                className="form-input"
                placeholder="email"
                value={values.email} />
             {errors.email && <p className="error">{errors.email}</p>}
            </div>
            <button className="form-input-btn" type="submit">Sign up</button>
            <span className="form-input-login">Already have an account? Login <Link to="/login/">here</Link></span>
        </form>
    </div>

    </div>
);
}
export default SignUpForm