import React, {useState, useEffect} from 'react'

function FilterForm () {
    const [targets, setTargets] = useState([])
    const [intensities, setIntensity] = useState([])
    const [target, setTarget] = useState('')
    const [intensity, setIntense] = useState('')
    const [result, setResult] = useState([])
    

    useEffect(()=> {
        async function getDropDownValues() {
            const list_url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/guest/random-wheel`;
            const response = await fetch(list_url);
            if (response.ok){
                const data = await response.json();
                const uniqueIntensity= Array.from(data.reduce((map, obj)=> map.set(obj.intensity, obj), new Map()).values())        
                const uniqueTargets= Array.from(data.reduce((map, obj)=> map.set(obj.target, obj), new Map()).values())        
                setTargets(uniqueTargets)
                setIntensity(uniqueIntensity)
            }
        }
        getDropDownValues();
    }, [])

//  const handleClick = async (target, intensity) => {
   
//     const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/filtered/random-wheel?target=${target}&intensity=${intensity}`;
//     const res = await fetch(url);   
//     console.log(res)
//     if(res.ok){
//         const data = await res.json();
//         console.log("fata", data)
//         setResult(data)
//     }


     useEffect(()=> {
         async function submitFilterValues(){
            const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/filtered/random-wheel?target=${target}&intensity=${intensity}`;
            const res = await fetch(url);   
            console.log(res)
            if(res.ok){
                const data = await res.json();
                console.log("fata", data)
                setResult(data)
            }
        }
        submitFilterValues();
     }, [target, intensity])

    return (
        
                <form>
                <div className="filter-form-container">
                    <select onChange={(e)=>setTarget(e.target.value)} className="form-select" aria-label="Default select example" value={target}>
                    <option value="">Targeted Muscles</option>
                    {targets.map(target=>{
                        return(
                        <option value={target.target} key={target.id}>{target.target}</option>
                        )
                    })}
                    </select>
                    <select onChange={(e)=>setIntense(e.target.value)} className="form-select" aria-label="Default select example" value={intensity}>
                    <option>Intensity</option>
                    {intensities.map(intensity=>
                        <option key={intensity.id} value={intensity.intensity}>{intensity.intensity}</option>
                    )}
                    </select>
                  <button className="btn btn-primary" type="submit">Submit</button>
                </div>  
                </form>
            )
        }
        export default FilterForm

//     function FilterForm () {
//         const [targets, setTargets] = useState([])
//         const [intensities, setIntensity] = useState([])

//     useEffect(()=> {
//         async function getTargets() {
//             const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/guest/random-wheel`;
//             // const url = `${process.env.REACT_APP_WORKOUTS}/api/workouts/guest/random-wheel?target=${target}&intensity=${intensity}`;
//             const response = await fetch(url);
//             if (response.ok){
//                 const data = await response.json();
//                 const uniqueIntensity= Array.from(data.reduce((map, obj)=> map.set(obj.intensity, obj), new Map()).values())        
//                 const uniqueTargets= Array.from(data.reduce((map, obj)=> map.set(obj.target, obj), new Map()).values())        
//                 setTargets(uniqueTargets)
//                 setIntensity(uniqueIntensity)
//             }
//         }
//         getTargets();
//     }, [])


//     return (
        
//         <form>
//         <div className="filter-form-container">
//             <select className="form-select" aria-label="Default select example">
//             <option value="">Targeted Muscles</option>
//             {targets.map(target=>{
//                 return(
//                 <option value={target.target} key={target.id}>{target.target}</option>
//                 )
//             })}
//             </select>
//             <select className="form-select" aria-label="Default select example">
//             <option>Intensity</option>
//             {intensities.map(intensity=>
//                 <option key={intensity.id} value={intensity.intensity}>{intensity.intensity}</option>
//             )}
//             </select>
//           <button class="btn btn-primary" type="submit">Submit</button>
//         </div>  
//         </form>
//     )
// }
// export default FilterForm