import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './App.css';
import SignUpForm from './SignUpForm';
import Nav from './Nav';
import LoginForm from './LoginForm';
import MainPage from './MainPage';
import FilterForm from './FilterForm';
import Leaderboard from './Leaderboard';
import Dashboard from './Dashboard';
import { AuthProvider, useAuthContext, useToken } from './Auth';
import UserProfileView from './UserProfileView';


function App() {
  const { user, token } = useAuthContext();
  return (
    <BrowserRouter>
    <AuthProvider>
    <Nav />
      <Routes>
        <Route path="/" element={<MainPage />} />
        {/* <Route path= "/WheelSpinner">
          <Route path="" element={<WheelSpinner />} />
        </Route> */}
          {/* <Route path="/saved-workouts"> 
              <Route path="/" element={<SavedWorkouts />} />
            </Route>
            <Route path="/more-workouts">
              <Route path="/" element={<MoreWorkouts />} />
            </Route> */}
            <Route path="">
              <Route path="/filter-form" element={<FilterForm />} />
            </Route>
            <Route path="/leaderboard">
              <Route path="" element={<Leaderboard />} />
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
