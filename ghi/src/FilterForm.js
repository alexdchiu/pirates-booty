import React, {useState, useEffect} from 'react'
import WheelSpinner from './WheelSpinner'
import WorkoutsList from './WorkoutsList'

function FilterForm ({workouts}) {
    const [intensities, setIntensity] = useState([])
    const [intensityOccurences, setIntensityOccurences] = useState({})
    const [target, setTarget] = useState('')
    const [intensity, setIntense] = useState('')
    const [result, setResult] = useState([])
    const [showWheel, setWheel] = useState(false)
    const [showList, setList] = useState(false)

    let workoutsList = workouts.exercises
    let listOfTargets = Array.from(new Set(workoutsList?.map(({target}) => target)))

    useEffect ( () => {
        workoutsFilteredByTarget(workoutsList)
    }, [target])

    const handleClick = async (e) => {
        setWheel(false)
        setList(false)
        e.preventDefault()
        const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/filtered/random-wheel?target=${target}&intensity=${intensity}`;
        fetch(url).then((res) => {
            if (res.ok) {
            return res.json();
            }
            throw new Error('Query parameters are invalid.');
        })
        .then((resData) => {
            setResult(resData.exercises)
            if (e.target.value === "wheel") {
                setWheel(true)
            } else {
                setList(true)
            }
        })
        .catch(() => {
            alert('Please enter valid query parameters.')
        });
    }

    
    let workoutsFilteredByTarget = (lst) => {
        var filteredList = []
        var filteredObj = {}
        
        lst?.forEach(element => {
            if (element.target === target) {
                var intensity = element.intensity.toString()
                if (intensity in filteredObj) {
                    filteredObj[intensity] += 1
                } else {
                    filteredObj[intensity] = 1
                }
            }
        });

        lst?.filter((workout) => {
            if (workout.target === target && !filteredList.includes(workout.intensity)){
                filteredList.push(workout.intensity)
                filteredList.sort(function(a,b) {
                    return a-b
                })
            }
        })

        setIntensity(filteredList)
        setIntensityOccurences(filteredObj)
    }
    
    return (
            <div>
                <div className="filter-form-outer-div">
                <div className="filter-form-list-container">
                <form>
                <div className="filter-form-container">
                    <p><label>Targeted Muscle to Work Out:</label>
                    <select onChange={(e)=> {setTarget(e.target.value)}} className="form-select" aria-label="Default select example" value={target}>
                    {/* <option>Targeted Muscles</option> */}
                        <option value="" disabled selected>Select your option</option>
                        {listOfTargets.map(target => {
                            return(
                                <option key={target} value={target}>{target}</option> 
                            )
                        })}
                    </select></p>
                    {(intensities.length > 0) && (
                        <p><label>Desired Intensity:</label>
                        <select onChange={(e)=>setIntense(e.target.value)} className="form-select" aria-label="Default select example" value={intensity}>
                        <option value="" disabled selected>Select your option</option>
                        {intensities.map(intensity => {
                            return(
                                <option key={intensity} value={intensity}>Intensity: {intensity} - (Results: {intensityOccurences[intensity.toString()]})</option> 
                            )
                        })}
                        </select>
                        </p>
                    )}
                  <button onClick={handleClick} className="btn btn-primary" type="submit" value="wheel">Wheel Spinner</button>
                  <button onClick={handleClick} className="btn btn-primary" type="submit" value="list">List of Exercises</button>
                </div>  
                </form>
                </div>
                </div>
                <div>
                    {showWheel && <WheelSpinner segments={result} />}
                    {showList && <WorkoutsList exercises={result} />}
                </div>
            </div>
            )
        }
        export default FilterForm