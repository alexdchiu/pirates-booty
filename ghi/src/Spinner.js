import React from 'react';
import ReactDOM from 'react-dom';

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
        ]
    }

    render() {
        return (
            <div className="App">
                <h1>What exercise should you do today?</h1>
                <Wheel items={this.places} />
            </div>
        );
    }
 }

 const rootElement = document.getElementById('root');
 ReactDOM.render(<App />, rootElement);


 export default Spinner;