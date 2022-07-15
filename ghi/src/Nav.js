import { NavLink } from 'react-router-dom';

function Nav() {
  return (
    <nav className="navbar navbar-expand-lg navbar-light bg-new">
      <div className="container-fluid">
      <img src="https://cdn-icons-png.flaticon.com/512/1355/1355982.png" alt="logo" width="50px"></img>
        <NavLink className="navbar-brand" to="/">Pirates Booty</NavLink>
        
        <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse navbar-collapse" id="navbarSupportedContent">
          <ul className="navbar-nav me-auto mb-2 mb-lg-0">
          <li className="nav-item">
            <NavLink className="nav-link" aria-current="page" to="/saved-workouts">Saved Workouts</NavLink>
            </li>
            <li className="nav-item">
            <NavLink className="nav-link" aria-current="page" to="/more-workouts">More Workouts</NavLink>
            </li>
            <li className="nav-item">
            <NavLink className="nav-link" aria-current="page" to="/leaderboard">Leaderboard</NavLink>
            </li>
            <li className="nav-item">
            <NavLink className="nav-link" to="/WheelSpinner">Wheel Spinner</NavLink>
            </li>
            </ul>
          <ul className="navbar-nav ms-auto mb-2 mb-lg-0">
            <li className="nav-item">
            <NavLink className="nav-link" aria-current="page" to="/signup/new">Sign Up</NavLink>
            </li>
            <li className="nav-item">
            <NavLink className="nav-link" aria-current="page" to="/login">Login</NavLink>
            </li>
           
          </ul>
</div>
    
    </div>
    </nav>
    )
    }
  export default Nav;
