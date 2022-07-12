
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './App.css';
import SignUpForm from './SignUpForm';
import Nav from './Nav';
import LoginForm from './LoginForm';

function App(props) {
  return (
    <BrowserRouter>
        <Nav />
        <div className="main_container">
          <Routes>
            <Route path="signup">
              <Route path="new" element={<SignUpForm signup={props.signup} />} />
            </Route>
          </Routes>
        
        
        </div>
    </BrowserRouter>
  );
}

export default App;
