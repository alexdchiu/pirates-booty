import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import Wheel from './components/wheel';
import './styles.css';

export class App extends React.Component {
  constructor() {
    super();
    this.places = [
      'Cardio',
      'Chest',
      'Back',
      'Shoulders',
      'Upper arms',
      'Upper legs'
  ];
  }

  render() {
    return (
      <div className="App">
        <h1>What should you eat today?</h1>
        <Wheel items={this.places} />
      </div>
    );
  }
}

const rootElement = document.getElementById('root');
ReactDOM.render(<App />, rootElement);






// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
