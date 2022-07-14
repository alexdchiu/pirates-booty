import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './App.css';
import SignUpForm from './SignUpForm';
import Nav from './Nav';
import LoginForm from './LoginForm';
import MainPage from './MainPage';
// import Spinner from './Spinner';

function App(props) {
  return (
    <BrowserRouter>
    <Nav />
    <div className="container">
      <Routes>
        <Route path="/" element={<MainPage />} />
        <Route path="/signup">
          <Route path="new" element={<SignUpForm signup={props.signup} />} />
        </Route>
            <Route path="/login">
              <Route path="" element={<LoginForm login={props.login} />} />
            </Route>
          </Routes>
      </div>
    </BrowserRouter>
  );
}
export default App;

/* <Route path="/">
          <Route path="" element={<Spinner />} />*/
