import React, {useState} from 'react'

function LoginForm (){
    const [initial, setInitial] = useState({
        username:"",
        password:"",
    })

    const handleStateChange = e => {
        setInitial({
            ...initial,
            [e.target.name]: e.target.value
        });
    };

    const handleSubmit = e => {
        e.prevent.Default()
    }

    return (
        <div className="login-container">  
        <div className="form-content-right">
        <form className="form">
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
                value={initial.username} />
           
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
                value={initial.password} />
            
            </div>
           
            <button onClick={handleSubmit} className="form-input-btn" type="submit">Login</button>
            {/* <span className="form-input-login">Already have an account? Login <a href="/login/">here</a></span> */}
        </form>
    </div>
    </div>
    )
}

export default LoginForm

// CLASS-BASED
// class LoginForm extends React.Component{
//     constructor(props){
//         super(props)
//         this.state={
//             username:"",
//             password:"",
//         }

//         this.handleUsernameChange = this.handleUsernameChange.bind(this)
//         this.handlePasswordChange = this.handlePasswordChange.bind(this)
//     }
//     handleUsernameChange(event){
//         const value = event.target.value
//         this.setState({username:value})
//     }

//     handlePasswordChange(event){
//         const value = event.target.value
//         this.setState({password:value})
//     }

//     async handleSubmit(event){
//         event.preventDefault()
//         const data = {...this.state};
//         const url = `${process.env.REACT_APP.USERS}/accounts`
//         const fetchConfig = {
//             method: "post",
//             body: JSON.stringify(data),
//             headers: {
//               'Content-Type': 'application/json',
//         }
//     }
//         const response = await fetch(url, fetchConfig);
//         if (response.ok) {
//             const newAccount = await response.json();
//             console.log(newAccount)
//         this.setState ({
//             username:"",
//             password:"",
//         })

//     }
//     }
//     render(){
//         return (
//             <div className="login-container">  
//             <div className="form-content-right">
//             <form onChange={this.handleSubmit} className="form">
//             <img src="https://cdn-icons.flaticon.com/png/512/1923/premium/1923035.png?token=exp=1657647218~hmac=b1798e2b708beaaa6e6dac9bce917ab8" alt="pirates" width="150px"></img>
//                 <h1> ARGH! </h1>
//                 <h1>WELCOME BACK PIRATE</h1>
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
               
//                 <button className="form-input-btn" type="submit">Login</button>
//                 {/* <span className="form-input-login">Already have an account? Login <a href="/login/">here</a></span> */}
//             </form>
//         </div>
//         </div>
//         )
//     }
// }

// export default LoginForm