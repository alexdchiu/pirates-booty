import React, { useEffect, useState } from "react"

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

    let [leaders, setLeaders] = useState([])

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
        getLeaders();
    }, [])

    // {data.map(user => )}
    return (
        <div className="outer-div">
            <div className="list-container">
                <table className="table table-striped">
                    <thead>
                        <tr className="leaderboard"><th>LEADERBOARD</th></tr>
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
                </table>
            </div>
        </div>
    )
}
export default Leaderboard;

