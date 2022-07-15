import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './App.css';
import SignUpForm from './SignUpForm';
import Nav from './Nav';
import LoginForm from './LoginForm';
import MainPage from './MainPage';
import WheelSpinner from './WheelSpinner';


function App(props) {
  return (
    <BrowserRouter>
    <Nav />

      <Routes>
        <Route path="/" element={<MainPage />} />
        <Route path= "/WheelSpinner">
          <Route path="" element={<WheelSpinner />} />
        </Route>
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

    </BrowserRouter>
  );
}
export default App;

