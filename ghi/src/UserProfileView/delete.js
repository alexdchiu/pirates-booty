import React, { useEffect, useState } from "react";
import { useAuthContext, getUserData } from '../Auth';

export function DeleteView() {
    const { user } = useAuthContext();
    const [userData, setUserData] = useState(null);

    async function getUserData(username) {
        const usernameurl = `${process.env.REACT_APP_USERS}/users/account/${username}`;
        try {
            const response = await fetch(usernameurl, {
                method: "get",
                credentials: "include",
            });
            if (response.ok) {
                const data = await response.json();
                setUserData(data)
            }
        } catch (e) { }
        return false
    }

    const handleFormSubmit = async (e) => {
        e.preventDefault();
        deleteProfile()
    }

    const deleteProfile = async () => {
        const userId = user.id
        const url = `${process.env.REACT_APP_USERS}/users/account/details/${userId}/`;
        const fetchConfig = {
            method: "delete",
            headers: {
                'Content-Type': 'application/json',
            },
        }
        const response = await fetch(url, fetchConfig);
        if (response.ok) {
            console.log("success")
        }
        else if (!response.ok) {
            console.log("not okay")
        }
    }


    // useEffect(
    // () => {
    //     getUserData(user.username)
    // }, []
    // )




    return (
        <div className="profile-container">
            <div className="main-body">
                <h1>Delete Profile</h1>
                <div className="row gutters-sm">
                <div className="mt-3">
                        <h4>{userData?.first_name} {userData?.last_name}</h4>
                        {/* <p className="text-secondary mb-1">Full Stack Developer</p> */}
                        <p className="text-muted font-size-sm">
                          {userData?.email}
                        </p>
                      </div>
                    <div className="col-md-8">
                        <div className="card mb-3">
                            <div className="card-body">
                                <div className="row">
                                    <div className="col-sm-12">
                                        <button
                                            onClick={handleFormSubmit}
                                            className="btn btn-info"
                                            target="__blank"
                                        >Delete Account
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    );

}
