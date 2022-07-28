import React, {useState, useEffect} from 'react'
import WheelSpinner from './WheelSpinner'
import WorkoutsList from './WorkoutsList'

function FilterForm ({workouts}) {
    const [targets, setTargets] = useState([])
    const [intensities, setIntensity] = useState([])
    const [target, setTarget] = useState('')
    const [intensity, setIntense] = useState('')
    const [result, setResult] = useState([])
    const [showWheel, setWheel] = useState(false)
    const [showList, setList] = useState(false)

    let workoutsList = workouts.exercises
    // workoutsList?.map(element => console.log(element))
    let listOfTargets = Array.from(new Set(workoutsList?.map(({target}) => target)))
    // console.log('targets', listOfTargets)

// for dynamic with API call
    // useEffect(()=> {
    //     async function getDropDownValues() {
    //         const list_url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/guest/random-wheel`;
    //         const response = await fetch(list_url);
    //         if (response.ok){
    //             const data = await response.json();
    //             const uniqueIntensity= Array.from(data.reduce((map, obj)=> map.set(obj.intensity, obj), new Map()).values())        
    //             const uniqueTargets= Array.from(data.reduce((map, obj)=> map.set(obj.target, obj), new Map()).values())        
    //             setTargets(uniqueTargets)
    //             setIntensity(uniqueIntensity)
    //         }
    //     }
    //     getDropDownValues();
    // }, [])
    useEffect ( () => {
        workoutsFilteredByTarget(workoutsList)
    }, [target])

    const handleClick = async (e) => {
        setWheel(false)
        setList(false)
        e.preventDefault()
        const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/filtered/random-wheel?target=${target}&intensity=${intensity}`;
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
        // var intensitiesOccurences = {}
        lst?.filter((workout) => {
            if (workout.target === target && !filteredList.includes(workout.intensity)){
                filteredList.push(workout.intensity)
                filteredList.sort(function(a,b) {
                    return a-b
                })
            }
        })
        setIntensity(filteredList)
    }
    

    // console.log(filteredList)

// useEffect(()=> {
//     async function submitFilterValues(){
//        const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/filtered/random-wheel?target=${target}&intensity=${intensity}`;
//        const res = await fetch(url);   
//        console.log(res)
//        if(res.ok){
//            const data = await res.json();
//            console.log("fata", data)
//            setResult(data)
//        }
//    }
//    submitFilterValues();
// }, [target, intensity])

    //  useEffect(()=> {
    //      async function submitFilterValues(){
    //         const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/filtered/random-wheel?target=${target}&intensity=${intensity}`;
    //         const res = await fetch(url);   
    //         console.log(res)
    //         if(res.ok){
    //             const data = await res.json();
    //             console.log("fata", data)
    //             setResult(data)
    //         }
    //     }
    //     submitFilterValues();
    //  }, [target, intensity])


    return (
            <div>
                <div className="outer-div">
                <div className="list-container justify-content-center">
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
                                <option key={intensity} value={intensity}>{intensity}</option> 
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
