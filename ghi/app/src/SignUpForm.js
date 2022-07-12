import React from "react"


class SignUpForm extends React.Component {
    constructor(props){
        super(props)
        this.state = {
            username: "",
            password: "",
            password2: "",
            first_name: "",
            last_name: "",
            email:"",
            birthday: "",
        }
        this.handleUsernameChange = this.handleUsernameChange.bind(this)
    }
    handleUsernameChange(event){
        const value = event.target.value
        this.setState({username:value})
    }

    render(){
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
                    onChange={this.handleUsernameChange}
                    type="text"
                    name="username"
                    className="form-input"
                    placeholder="username"
                    value={this.state.username} />
               
                </div>
                <div className="form-inputs">
                <label htmlFor="password" className="form-label">
                   
                </label>
                    <input 
                    type="password"
                    name="password"
                    className="form-input"
                    placeholder="password" />
                
                </div>
                <div className="form-inputs">
                <label htmlFor="confirm_password" className="form-label">
                  
                </label>
                    <input 
                    type="password"
                    name="password"
                    className="form-input"
                    placeholder="confirm password" />
                
                </div>
                <div className="form-inputs">
                <label htmlFor="first_name" className="form-label">
                  
                </label>
                    <input 
                    type="text"
                    name="first_name"
                    className="form-input"
                    placeholder="first name" />
                
                </div>
                <div className="form-inputs">
                <label htmlFor="last_name" className="form-label">
                  
                </label>
                    <input 
                    type="text"
                    name="last_name"
                    className="form-input"
                    placeholder="last name" />
               
                </div>
                <div className="form-inputs">
                <label htmlFor="email" className="form-label">
                    
                </label>
                    <input 
                    type="email"
                    name="email"
                    className="form-input"
                    placeholder="email" />
                
                </div>
                <div className="form-inputs">
                <label htmlFor="birthday" className="form-label">
                 
                </label>
                    <input 
                    type="date"
                    name="birthday"
                    className="form-input"
                    placeholder="birthday" />
                
                </div>
                <button className="form-input-btn" type="submit">Sign up</button>
                <span className="form-input-login">Already have an account? Login <a href="/login/">here</a></span>
            </form>
        </div>
        </div>
    );
        }
}
export default SignUpForm