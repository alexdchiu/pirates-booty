import React, {useState}  from "react"
import {useNavigate} from "react-router-dom"


function EditProfile () {
    const [first_name, setFirstName] = useState("")
    const [last_name, setLastName] = useState("")
    const [username, setUsername] = useState("")
    const [picture, setPicture] = useState("")
    const [email, setEmail] = useState("")
    const navigate= useNavigate()


    const handleSubmit = async (e) =>{
        e.preventDefault()
        putAPI()
    }
    const putAPI = async (id) => {
        const data = {...first_name, ...last_name, ...username, ...picture}
        const url = `${process.env.REACT_APP_USERS}/users/account/details/${id}`;
        const fetchConfig = {
            method: "put",
            body: JSON.stringify(data),
            headers: {
                'Content-Type': 'application/json',
            },
        }
        const response = await fetch(url, fetchConfig);
        if(response.ok){
            const editAccount = await response.json();
            console.log(editAccount);
            navigate('/profile/')
        }
        else if (!response.ok){
            const message = ` An error: ${response.status} - ${response.statusText}`;
            throw new Error(message);
        }
    }

    return (
        <div className="profile-container">
            <div className="edit-profile">
                <form>
                    <div className="form-inputs">
                        <label htmlFor="username">
                        </label>
                            <input 
                            onChange={(e)=>setUsername(e.target.value)}
                            type="text"
                            name="username"
                            placeholder="username"
                            value={username} />
                    </div>
                    <div className="form-inputs">
                        <label htmlFor="first_name">
                        </label>
                            <input
                            onChange={(e)=>setFirstName(e.target.value)}
                            type="text"
                            name="first_name"
                            placeholder="First Name"
                            value={first_name} />
                    </div>
                    <div className="form-inputs">
                        <label htmlFor="last_name">
                        </label>
                            <input
                            onChange={(e)=>setLastName(e.target.value)}
                            type="text"
                            name="last_name"
                            placeholder="Last Name"
                            value={last_name} />
                    </div>
                    <div className="form-inputs">
                        <label htmlFor="email">
                        </label>
                            <input
                            onChange={(e)=>setEmail(e.target.value)}
                            type="text"
                            name="email"
                            placeholder="Email"
                            value={email} />
                    </div>
                    <div className="form-inputs">
                        <label htmlFor="picture">
                        </label>
                            <input
                            onChange={(e)=>setPicture(e.target.value)}
                            type="text"
                            name="picture"
                            placeholder="Picure URL"
                            value={picture} />
                    </div>
            <button onClick={handleSubmit} type="submit">Update</button>
        </form>
    </div>
    </div>

);
}
export default EditProfile