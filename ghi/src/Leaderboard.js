import React, { useEffect, useState } from "react"
import { useAuthContext } from "./Auth";

const positions = {
    "1": "🥇",
    "2": "🥈",
    "3": "🥉",
};

function Rank({username, coins, pos}) {
    return (
        <tr>
            <td scope="row">{positions[pos]}</td>
            <td>{username}</td>
            <td>{coins}</td>
        </tr>
    );
}

function Leaderboard() {
    const {user} = useAuthContext()
    let [leaders, setLeaders] = useState([])
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
        } catch (e) {}
        return false
      }
    
    useEffect(() => {
        async function getLeaders() {
            const url = `${process.env.REACT_APP_USERS}/users/account/leaderboard/`;
            const response = await fetch(url);
            if (response.ok) {
                const data = await response.json();
                console.log("inside effect", data)
                setLeaders(data);
            }
        }
        getLeaders()
        getUserData(user.username);
    }, [])

    // {data.map(user => )}
    return (
        <div className="outer-div">
            <div className="list-container">
                <h1 className="leaderboard-h1">LEADERBOARD</h1>
                <table className="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Medal</th>
                            <th scope="col">Username</th>
                            <th scope="col">Total Booty</th>
                        </tr>
                    </thead>
                    <tbody>
                        {leaders
                            .sort((a,b) => b.coins - a.coins)
                            .slice(0,3)
                            .map((user, i) =>
                                <Rank key={i} 
                                      pos={i + 1} 
                                      username={user.username} 
                                      coins={user.coins}/>)}
                    </tbody>
                    <tbody>
                        <tr>
                            <td><b>CURRENT USER:</b></td>
                            <td><b>{userData?.username}</b></td>
                            <td><b>{userData?.coins}</b></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    )
}
export default Leaderboard;
