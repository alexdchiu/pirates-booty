import React, {useState, useEffect} from 'react'

function FilterForm () {
    const [targets, setTargets] = useState([])
    const [intensity, setIntensity] = useState([])
    
    useEffect(()=>{
        async function getTargets() {
            const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/filtered/random/wheel`;
            const response = fetch(url);
            if (response.ok){
                const data = await response.json();
                setTargets(data)
            }
        }
        getTargets();
    }, [])
    return (
        <div className="filter-form-container">
     
            <select className="form-select" aria-label="Default select example">
            <option>Targeted Area</option>
            {targets.map(target=>
                <option value={target.name}>{target.name}</option>
            )}
            </select>
          <button type="submit">Submit</button>
        </div>
    )
}
export default FilterForm