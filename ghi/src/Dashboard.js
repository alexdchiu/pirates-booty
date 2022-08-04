import React from "react";

function Dashboard() {


return (
    
    <div className="px-4 py-5 my-5 text-center">
       <ul className="nav nav-pills nav-justified">
  <li className="nav-item">
    <a className="nav-link active" aria-current="page" href="#">Save Workouts</a>
  </li>
  <li className="nav-item">
    <a className="nav-link" href="#">More Workouts</a>
  </li>
  <li className="nav-item">
    <a className="nav-link" href="#">Leaderboard</a>
  </li>
  
</ul>
      <h1 className="display-5 fw-bold">Pirates Booty</h1>
      <div className="col-lg-6 mx-auto">
        <p className="lead mb-4">
          Dashboard here
        </p>
        {/* <WheelSpinner setResult={setResult} segments={segments} /> */}
      </div>
    </div>
  );
}


export default Dashboard;