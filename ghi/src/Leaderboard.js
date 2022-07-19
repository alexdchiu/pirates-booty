import React from "react"

function Leaderboard (){
    return(
        <div className="outer-div">
        <div className="list-container">
            
            <table className="table table-striped">
            <thead>
                <tr>
                <th scope="col">Metal</th>
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
export default Leaderboard