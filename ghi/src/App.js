
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './App.css';
import SignUpForm from './SignUpForm';
import Nav from './Nav';
import LoginForm from './LoginForm';

function App(props) {
  return (
    <BrowserRouter>
        <Nav />
        {/* <div className="main_container"> */}
          <Routes>
          {/* <Route path="/saved-workouts"> 
              {/* <Route path="/" element={<SavedWorkouts />} />
            </Route>
            <Route path="/more-workouts">
              <Route path="/" element={<MoreWorkouts />} />
            </Route>
            <Route path="/leaderboard">
              <Route path="/" element={<Leaderboard />} />
            </Route> */}
            <Route path="/signup">
              <Route path="new" element={<SignUpForm />} />
            </Route>
            <Route path="/login">
              <Route path="" element={<LoginForm />} />
            </Route>
          </Routes>
        
        
        {/* </div> */}
    </BrowserRouter>
  );
}

export default App;
