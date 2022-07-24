import React from "react";
import { useAuthContext } from '../Auth';

function UserProfileView (){
    const { user, token } = useAuthContext();
    console.log('user', user)
    console.log('token', token)
    return(
        <div className="outer-div">
        <div className="list-container">
            <table className="table table-striped">
            <thead>
                <tr className="leaderboard">{user.first_name}'s Profile</tr>
            </thead>
            <thead>
                <tr>
                <th scope="col">Medal</th>
                <th scope="col">Username</th>
                <th scope="col">Total Booty</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <th scope="row">🥇</th>
                <td>Mark</td>
                <td>10</td>
                </tr>
                <tr>
                <th scope="row">🥈</th>
                <td>Jacob</td>
                <td>9</td>
                </tr>
                <tr>
                <th scope="row">🥉</th>
                <td>Larry</td>
                <td>8</td>
                </tr>
            </tbody>
            </table>
        </div>
        </div>
        )
}
export default UserProfileView;