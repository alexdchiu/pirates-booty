import React, {useState, useEffect} from 'react'
import WheelSpinner from './WheelSpinner'
import WorkoutsList from './WorkoutsList'

function FilterForm ({workouts}) {
    const [target, setTarget] = useState('')
    const [equipment, setEquipment] = useState('')
    const [listOfEquipment, setListOfEquipment] = useState([])
    const [equipmentOccurrences, setEquipmentOccurrences] = useState({})
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
        const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/filtered/?target=${target}&equipment=${equipment}`;
        // const res = await fetch(url);   
        // if(res.ok){
        //     const data = await res.json();
        //     // console.log("data", data)
        //     setResult(data.exercises)
        // } 
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
                var equipment = element.equipment
                if (equipment in filteredObj) {
                    filteredObj[equipment] += 1
                } else {
                    filteredObj[equipment] = 1
                }
            }
        });

        lst?.filter((workout) => {
            if (workout.target === target && !filteredList.includes(workout.equipment)){
                filteredList.push(workout.equipment)
                filteredList.sort(function(a,b) {
                    return a-b
                })
            }
        })

        setListOfEquipment(filteredList)
        setEquipmentOccurrences(filteredObj)
    }
    
    return (
            <div>
                <div className="filter-form-outer-div">
                <div className="filter-form-list-container">
                <form>
                <div className="filter-form-container">
                    <p><label>Targeted Muscle to Work Out:</label>
                    <select onChange={(e)=> {setTarget(e.target.value)}} className="form-select text-capitalize" aria-label="Default select example" value={target}>
                    {/* <option>Targeted Muscles</option> */}
                        <option value="" disabled selected>Select your option</option>
                        {listOfTargets.map(target => {
                            return(
                                <option key={target} value={target}>{target}</option> 
                            )
                        })}
                    </select></p>
                    {(listOfEquipment.length > 0) && (
                        <p><label>Required Equipment:</label>
                        <select onChange={(e)=>setEquipment(e.target.value)} className="form-select text-capitalize" aria-label="Default select example" value={equipment}>
                        <option value="" disabled selected>Select your option</option>
                        {listOfEquipment.map(equipment => {
                            return(
                                <option key={equipment} value={equipment}>{equipment} - (Results: {equipmentOccurrences[equipment.toString()]})</option> 
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
                <div className="filter-form-wheel">
                    <div className="inner-wheel-div">{showWheel && <WheelSpinner segments={result} />}</div>
                    
                
                </div>    
                <div>{showList && <WorkoutsList exercises={result} />}</div>
                
            </div>
            )
        }
        export default FilterForm