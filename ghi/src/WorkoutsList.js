import React from 'react'


function WorkoutsList({exercises}) {
  // const exercises = [
  //   {
  //     "id": 870,
  //     "name": "butt-ups",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "body weight",
  //     "intensity": 5,
  //     "length_of_workout": 5,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0870.gif"
  //   },
  //   {
  //     "id": 840,
  //     "name": "weighted overhead crunch (on stability ball)",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "weighted",
  //     "intensity": 5,
  //     "length_of_workout": 5,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0840.gif"
  //   },
  //   {
  //     "id": 2297,
  //     "name": "stability ball crunch (full range hands behind head)",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "stability ball",
  //     "intensity": 5,
  //     "length_of_workout": 10,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/2297.gif"
  //   },
  //   {
  //     "id": 2135,
  //     "name": "weighted front plank",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "weighted",
  //     "intensity": 5,
  //     "length_of_workout": 10,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/2135.gif"
  //   },
  //   {
  //     "id": 3665,
  //     "name": "power point plank",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "body weight",
  //     "intensity": 5,
  //     "length_of_workout": 10,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/3665.gif"
  //   },
  //   {
  //     "id": 1496,
  //     "name": "sledge hammer",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "hammer",
  //     "intensity": 5,
  //     "length_of_workout": 10,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/1496.gif"
  //   },
  //   {
  //     "id": 475,
  //     "name": "hanging straight leg raise",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "body weight",
  //     "intensity": 5,
  //     "length_of_workout": 20,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0475.gif"
  //   },
  //   {
  //     "id": 2466,
  //     "name": "bridge - mountain climber (cross body)",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "body weight",
  //     "intensity": 5,
  //     "length_of_workout": 20,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/2466.gif"
  //   },
  //   {
  //     "id": 13,
  //     "name": "assisted lying leg raise with throw down",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "assisted",
  //     "intensity": 5,
  //     "length_of_workout": 20,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0013.gif"
  //   },
  //   {
  //     "id": 635,
  //     "name": "oblique crunches floor",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "body weight",
  //     "intensity": 5,
  //     "length_of_workout": 25,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0635.gif"
  //   },
  //   {
  //     "id": 871,
  //     "name": "tuck crunch",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "body weight",
  //     "intensity": 5,
  //     "length_of_workout": 25,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0871.gif"
  //   },
  //   {
  //     "id": 3698,
  //     "name": "inchworm v. 2",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "body weight",
  //     "intensity": 5,
  //     "length_of_workout": 30,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/3698.gif"
  //   },
  //   {
  //     "id": 972,
  //     "name": "band bicycle crunch",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "band",
  //     "intensity": 5,
  //     "length_of_workout": 30,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0972.gif"
  //   },
  //   {
  //     "id": 212,
  //     "name": "cable seated crunch",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "cable",
  //     "intensity": 5,
  //     "length_of_workout": 30,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0212.gif"
  //   },
  //   {
  //     "id": 12,
  //     "name": "assisted lying leg raise with lateral throw down",
  //     "body_part": "waist",
  //     "target": "abs",
  //     "equipment": "assisted",
  //     "intensity": 5,
  //     "length_of_workout": 30,
  //     "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0012.gif"
  //   }
  // ]


  return (
    <div className="outer-div">
      <div className="list-container">
          {/* <h4 className>Exercises</h4> */}
          <table className="table table-striped">
            <thead>
              <tr className="WorkoutsList">Exercises</tr>
            </thead>
            <thead>
              <tr>
                <th>Name</th>
                <th>Target</th>
                <th>Equipment</th>
                <th>Intensity</th>
                <th>Length of Workout</th>
              </tr>
            </thead>
            <tbody>
              {
                exercises.map(filtered => {
                  return(
                    <tr key={filtered.id}>
                      <td>{filtered.name}</td>
                      <td>{filtered.target}</td>
                      <td>{filtered.equipment}</td>
                      <td>{filtered.intensity}</td>
                      <td>{filtered.length_of_workout} mins</td>
                    </tr>
                  )
                })
              }
            </tbody>
          </table>
      </div>
    </div>
  )
}

export default WorkoutsList
