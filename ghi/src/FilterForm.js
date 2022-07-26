import React, {useState, useEffect} from 'react'

function FilterForm () {
    const [targets, setTargets] = useState([])
    const [intensities, setIntensity] = useState([])
    const [target, setTarget] = useState('')
    const [intensity, setIntense] = useState('')
    const [result, setResult] = useState([])
    

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


 const handleClick = async (e) => {
    e.preventDefault()
    const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/filtered/random-wheel?target=${target}&intensity=${intensity}`;
    const res = await fetch(url);   
    if(res.ok){
        const data = await res.json();
        console.log("fata", data)
        setResult(data)
    }
 }
 
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
                <form>
                <div className="filter-form-container">
                    <select onChange={(e)=>setTarget(e.target.value)} className="form-select" aria-label="Default select example" value={target}>
                    <option>Targeted Muscles</option>
                        <option value="abductors">abductors</option>
                        <option value="abs">abs</option>
                        <option value="adductors">adductors</option>
                        <option value="biceps">biceps</option>
                        <option value="calves">calves</option>
                        <option value="cardiovascular system">cardiovascular system</option>
                        <option value="delts">delts</option>
                        <option value="forearms">forearms</option>
                        <option value="glutes">glutes</option>
                        <option value="hamstrings">hamstrings</option>
                        <option value="lats">lats</option>
                        <option value="levator scapulae">levator scapulae</option>
                        <option value="pectorals">pectorals</option>
                        <option value="quads">quads</option>
                        <option value="serratus anterior">serratus anterior</option>
                        <option value="spine">spine</option>
                        <option value="traps">traps</option>
                        <option value="triceps">triceps</option>
                        <option value="upper back">upper back</option>
                    {/* {targets.map(target=>{
                        return(
                        <option value={target.target} key={target.id}>{target.target}</option>
                        )
                    })} */}
                    </select>
                    <select onChange={(e)=>setIntense(e.target.value)} className="form-select" aria-label="Default select example" value={intensity}>
                    <option>Intensity</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>

                    {/* {intensities.map(intensity=>
                        <option key={intensity.id} value={intensity.intensity}>{intensity.intensity}</option>
                    )} */}
                    </select>
                  <button onClick={handleClick} className="btn btn-primary" type="submit">Submit</button>
                </div>  
                </form>
            )
        }
        export default FilterForm
