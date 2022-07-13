import React, {useEffect, useState}  from "react"
import validation from "./Validation"

function SignUpForm () {
    const [values, setValues] = useState ({
        username: "",
        password: "",
        password2: "",
        first_name:"",
        last_name: "",
        email: "",
        birthday: "",
    })
    
    const [errors, setErrors] = useState({})

    const handleChange = e => {
        setValues({
            ...values,
            [e.target.name]: e.target.value
        }); 
    };
    
    const handleFormSubmit = e => {
            e.preventDefault()
            setErrors(validation(values))
        
    };

    return (
        <div className="container">
    <div className="form-content-right">
        <form className="form">
        <img src="https://cdn-icons-png.flaticon.com/512/7470/7470736.png" alt="spinwheel" width="150px"></img>
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
            <label htmlFor="confirm_password" className="form-label">
              
            </label>
                <input
                onChange={handleChange}
                type="password"
                name="password2"
                className="form-input"
                placeholder="confirm password"
                value={values.password2} />
            {errors.password2 && <p className="error">{errors.password2}</p>}
        
            
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
            <div className="form-inputs">
            <label htmlFor="birthday" className="form-label">

            </label>
                <input 
                onChange={handleChange}
                type="date"
                name="birthday"
                className="form-input"
                placeholder="birthday"
                value={values.birthday} />
                        {errors.birthday && <p className="error">{errors.birthday}</p>}
            </div>
            <button onClick={handleFormSubmit} className="form-input-btn" type="submit">Sign up</button>
            <span className="form-input-login">Already have an account? Login <a href="/login/">here</a></span>
        </form>
    </div>
    </div>
);
}
export default SignUpForm

// CLASS-BASED
// class SignUpForm extends React.Component {
//     constructor(props){
//         super(props)
//         this.state = {
//             username: "",
//             password: "",
//             password2: "",
//             first_name: "",
//             last_name: "",
//             email:"",
//             birthday: "",
//         }
//         this.handleUsernameChange = this.handleUsernameChange.bind(this)
//         this.handlePasswordChange = this.handlePasswordChange.bind(this)
//         this.handlePassword2Change = this.handlePassword2Change.bind(this)
//         this.handleFirstNameChange = this.handleFirstNameChange.bind(this)
//         this.handleLastNameChange = this.handleLastNameChange.bind(this)
//         this.handleEmailChange = this.handleEmailChange.bind(this)
//         this.handleBirthdayChange = this.handleBirthdayChange.bind(this)
//     }
//     handleUsernameChange(event){
//         const value = event.target.value
//         this.setState({username:value})
//     }

//     handlePasswordChange(event){
//         const value = event.target.value
//         this.setState({password:value})
//     }

//     handlePassword2Change(event){
//         const value = event.target.value
//         this.setState({password2:value})
//     }

//     handleFirstNameChange(event){
//         const value = event.target.value
//         this.setState({first_name:value})
//     }

//     handleLastNameChange(event){
//         const value = event.target.value
//         this.setState({lastf_name:value})
//     }

//     handleEmailChange(event){
//         const value = event.target.value
//         this.setState({email:value})
//     }

//     handleBirthdayChange(event){
//         const value = event.target.value
//         this.setState({birthday:value})
//     }


//     render(){
//         return (
//             <div className="container">
//         <div className="form-content-right">
//             <form className="form">
//             <img src="https://cdn-icons-png.flaticon.com/512/7470/7470736.png" alt="spinwheel" width="150px"></img>
//                 <h1>SIGN UP</h1>
//                 <div className="form-inputs">
//                 <label htmlFor="username" className="form-label">
          
//                 </label>
//                     <input 
//                     onChange={this.handleUsernameChange}
//                     type="text"
//                     name="username"
//                     className="form-input"
//                     placeholder="username"
//                     value={this.state.username} />
               
//                 </div>
//                 <div className="form-inputs">
//                 <label htmlFor="password" className="form-label">
                   
//                 </label>
//                     <input
//                     onChange={this.handlePasswordChange}
//                     type="password"
//                     name="password"
//                     className="form-input"
//                     placeholder="password"
//                     value={this.state.password} />
                
//                 </div>
//                 <div className="form-inputs">
//                 <label htmlFor="confirm_password" className="form-label">
                  
//                 </label>
//                     <input
//                     onChange={this.handlePassword2Change}
//                     type="password"
//                     name="password"
//                     className="form-input"
//                     placeholder="confirm password"
//                     value={this.state.password2} />
                
//                 </div>
//                 <div className="form-inputs">
//                 <label htmlFor="first_name" className="form-label">
                  
//                 </label>
//                     <input
//                     onChange={this.handleFirstNameChange}
//                     type="text"
//                     name="first_name"
//                     className="form-input"
//                     placeholder="first name"
//                     value={this.state.first_name} />
                
//                 </div>
//                 <div className="form-inputs">
//                 <label htmlFor="last_name" className="form-label">
                  
//                 </label>
//                     <input
//                     onChange={this.handleLastNameChange} 
//                     type="text"
//                     name="last_name"
//                     className="form-input"
//                     placeholder="last name"
//                     value={this.state.last_name} />
               
//                 </div>
//                 <div className="form-inputs">
//                 <label htmlFor="email" className="form-label">
                    
//                 </label>
//                     <input
//                     onChange={this.handleEmailChange}
//                     type="email"
//                     name="email"
//                     className="form-input"
//                     placeholder="email"
//                     value={this.state.email} />
                
//                 </div>
//                 <div className="form-inputs">
//                 <label htmlFor="birthday" className="form-label">
                 
//                 </label>
//                     <input 
//                     onChange={this.handleBirthdayChange}
//                     type="date"
//                     name="birthday"
//                     className="form-input"
//                     placeholder="birthday"
//                     value={this.state.birthday} />
                
//                 </div>
//                 <button className="form-input-btn" type="submit">Sign up</button>
//                 <span className="form-input-login">Already have an account? Login <a href="/login/">here</a></span>
//             </form>
//         </div>
//         </div>
//     );
//         }
// }
// export default SignUpForm