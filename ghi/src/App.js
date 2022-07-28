import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './App.css';
import SignUpForm from './SignUpForm';
import Nav from './Nav';
import LoginForm from './LoginForm';
import MainPage from './MainPage';
import FilterForm from './FilterForm';
import Leaderboard from './Leaderboard';
import Dashboard from './Dashboard';
import WorkoutsList from './WorkoutsList';
import { AuthProvider, useAuthContext, useToken } from './Auth';
import UserProfileView from './UserProfileView';
import React, {useState, useEffect} from 'react'

function App() {
  const { user, token } = useAuthContext();
  const [workouts, setWorkouts] = useState({});

  useEffect ( () => {
    async function getAllWorkouts() {
      const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/all`;
      const res = await fetch(url)
      if(res.ok) {
        setWorkouts(await res.json())
      }
    }
    getAllWorkouts()
  },[])
  
  return (
    <BrowserRouter>
    <AuthProvider>
    <Nav />
      <Routes>
        <Route path="/" element={<MainPage />} />
            <Route path="">
              <Route path="/filter-form" element={<FilterForm workouts={workouts} />} />
            </Route>
            <Route path="/leaderboard">
              <Route path="" element={<Leaderboard />} />
            </Route>
            <Route path="/WorkoutsList">
              <Route path="" element={<WorkoutsList />} />
            </Route>
            <Route path="/profile">
              <Route path="" element={<UserProfileView />} />
            </Route>
        <Route path="/signup">
          <Route path="new" element={<SignUpForm />} />
        </Route>
            <Route path="/login">
              <Route path="" element={<LoginForm />} />
            </Route>
            <Route path="/dashboard">
              <Route path="" element={<Dashboard />} />
            </Route>
          </Routes>
    </AuthProvider>

    </BrowserRouter>
  );
}
export default App;
