
import { BrowserRouter, Routes, Route} from 'react-router-dom';
import Nav from './Nav';
import MainPage from './MainPage';
import Spinner from './Spinner';



function App() {
  return (
    <BrowserRouter>
    <Nav />
    <div className="container">
      <Routes>
        <Route path="/" element={<MainPage />} />
      
        <Route path="spinner">
          <Route path="" element={<Spinner />} />
        </Route>
        
        </Routes>
    </div>
    
    </BrowserRouter>
    
  );
}

export default App;
