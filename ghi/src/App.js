<<<<<<< HEAD

import { BrowserRouter, Routes, Route} from 'react-router-dom';
import Nav from './Nav';
import MainPage from './MainPage';
// import Spinner from './Spinner';


=======
>>>>>>> main

import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './App.css';
import SignUpForm from './SignUpForm';
import Nav from './Nav';
import LoginForm from './LoginForm';

function App(props) {
  return (
    <BrowserRouter>
<<<<<<< HEAD
    <Nav />
    <div className="container">
      <Routes>
        <Route path="/" element={<MainPage />} />
      
        {/* <Route path="/">
          <Route path="" element={<Spinner />} />
        </Route> */}
        
        </Routes>
    </div>
    
    </BrowserRouter>
     

  )
=======
        <Nav />
        <div className="main_container">
          <Routes>
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
>>>>>>> main
}

export default App;
