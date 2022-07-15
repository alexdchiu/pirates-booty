       
// import React, { useEffect, useState } from 'react'

// const WheelComponent = ({
//   segments,
//   segColors,
//   winningSegment,
//   onFinished,
//   primaryColor = 'black',
//   contrastColor = 'white',
//   buttonText = 'Spin',
//   isOnlyOnce = true,
//   size = 290,
//   upDuration = 100,
//   downDuration = 1000,
//   fontFamily = 'proxima-nova'
// }) => {
//   let currentSegment = ''
//   let isStarted = false
//   const [isFinished, setFinished] = useState(false)
//   let timerHandle = 0
//   const timerDelay = segments.length
//   let angleCurrent = 0
//   let angleDelta = 0
//   let canvasContext = null
//   let maxSpeed = Math.PI / `${segments.length}`
//   const upTime = segments.length * upDuration
//   const downTime = segments.length * downDuration
//   let spinStart = 0
//   let frames = 0
//   const centerX = 300
//   const centerY = 300
//   useEffect(() => {
//     wheelInit()
//     setTimeout(() => {
//       window.scrollTo(0, 1)
//     }, 0)
//   }, [])
//   const wheelInit = () => {
//     initCanvas()
//     wheelDraw()
//   }

//   const initCanvas = () => {
//     let canvas = document.getElementById('canvas')
//     console.log(navigator)
//     if (navigator.userAgent.indexOf('MSIE') !== -1) {
//       canvas = document.createElement('canvas')
//       canvas.setAttribute('width', 1000)
//       canvas.setAttribute('height', 600)
//       canvas.setAttribute('id', 'canvas')
//       document.getElementById('wheel').appendChild(canvas)
//     }
//     canvas.addEventListener('click', spin, false)
//     canvasContext = canvas.getContext('2d')
//   }
//   const spin = () => {
//     isStarted = true
//     if (timerHandle === 0) {
//       spinStart = new Date().getTime()
//       // maxSpeed = Math.PI / ((segments.length*2) + Math.random())
//       maxSpeed = Math.PI / segments.length
//       frames = 0
//       timerHandle = setInterval(onTimerTick, timerDelay)
//     }
//   }
//   const onTimerTick = () => {
//     frames++
//     draw()
//     const duration = new Date().getTime() - spinStart
//     let progress = 0
//     let finished = false
//     if (duration < upTime) {
//       progress = duration / upTime
//       angleDelta = maxSpeed * Math.sin((progress * Math.PI) / 2)
//     } else {
//       if (winningSegment) {
//         if (currentSegment === winningSegment && frames > segments.length) {
//           progress = duration / upTime
//           angleDelta =
//             maxSpeed * Math.sin((progress * Math.PI) / 2 + Math.PI / 2)
//           progress = 1
//         } else {
//           progress = duration / downTime
//           angleDelta =
//             maxSpeed * Math.sin((progress * Math.PI) / 2 + Math.PI / 2)
//         }
//       } else {
//         progress = duration / downTime
//         angleDelta = maxSpeed * Math.sin((progress * Math.PI) / 2 + Math.PI / 2)
//       }
//       if (progress >= 1) finished = true
//     }

//     angleCurrent += angleDelta
//     while (angleCurrent >= Math.PI * 2) angleCurrent -= Math.PI * 2
//     if (finished) {
//       setFinished(true)
//       onFinished(currentSegment)
//       clearInterval(timerHandle)
//       timerHandle = 0
//       angleDelta = 0
//     }
//   }

//   const wheelDraw = () => {
//     clear()
//     drawWheel()
//     drawNeedle()
//   }

//   const draw = () => {
//     clear()
//     drawWheel()
//     drawNeedle()
//   }

//   const drawSegment = (key, lastAngle, angle) => {
//     const ctx = canvasContext
//     const value = segments[key]
//     ctx.save()
//     ctx.beginPath()
//     ctx.moveTo(centerX, centerY)
//     ctx.arc(centerX, centerY, size, lastAngle, angle, false)
//     ctx.lineTo(centerX, centerY)
//     ctx.closePath()
//     ctx.fillStyle = segColors[key]
//     ctx.fill()
//     ctx.stroke()
//     ctx.save()
//     ctx.translate(centerX, centerY)
//     ctx.rotate((lastAngle + angle) / 2)
//     ctx.fillStyle = contrastColor
//     ctx.font = 'bold 1em ' + fontFamily
//     ctx.fillText(value.substr(0, 21), size / 2 + 20, 0)
//     ctx.restore()
//   }

//   const drawWheel = () => {
//     const ctx = canvasContext
//     let lastAngle = angleCurrent
//     const len = segments.length
//     const PI2 = Math.PI * 2
//     ctx.lineWidth = 1
//     ctx.strokeStyle = primaryColor
//     ctx.textBaseline = 'middle'
//     ctx.textAlign = 'center'
//     ctx.font = '1em ' + fontFamily
//     for (let i = 1; i <= len; i++) {
//       const angle = PI2 * (i / len) + angleCurrent
//       drawSegment(i - 1, lastAngle, angle)
//       lastAngle = angle
//     }

    // Draw a center circle
//     ctx.beginPath()
//     ctx.arc(centerX, centerY, 50, 0, PI2, false)
//     ctx.closePath()
//     ctx.fillStyle = primaryColor
//     ctx.lineWidth = 10
//     ctx.strokeStyle = contrastColor
//     ctx.fill()
//     ctx.font = 'bold 1em ' + fontFamily
//     ctx.fillStyle = contrastColor
//     ctx.textAlign = 'center'
//     ctx.fillText(buttonText, centerX, centerY + 3)
//     ctx.stroke()

//     // Draw outer circle
//     ctx.beginPath()
//     ctx.arc(centerX, centerY, size, 0, PI2, false)
//     ctx.closePath()

//     ctx.lineWidth = 10
//     ctx.strokeStyle = primaryColor
//     ctx.stroke()
//   }

//   const drawNeedle = () => {
//     const ctx = canvasContext
//     ctx.lineWidth = 1
//     ctx.strokeStyle = contrastColor
//     ctx.fileStyle = contrastColor
//     ctx.beginPath()
//     ctx.moveTo(centerX + 20, centerY - 50)
//     ctx.lineTo(centerX - 20, centerY - 50)
//     ctx.lineTo(centerX, centerY - 70)
//     ctx.closePath()
//     ctx.fill()
//     const change = angleCurrent + Math.PI / 2
//     let i =
//       segments.length -
//       Math.floor((change / (Math.PI * 2)) * segments.length) -
//       1
//     if (i < 0) i = i + segments.length
//     ctx.textAlign = 'center'
//     ctx.textBaseline = 'middle'
//     ctx.fillStyle = primaryColor
//     ctx.font = 'bold 1.5em ' + fontFamily
//     currentSegment = segments[i]
//     isStarted && ctx.fillText(currentSegment, centerX + 10, centerY + size + 50)
//   }
//   const clear = () => {
//     const ctx = canvasContext
//     ctx.clearRect(0, 0, 1000, 800)
//   }
//   return (
//     <div id='wheel'>
//       <canvas
//         id='canvas'
//         width='1000'
//         height='800'
//         style={{
//           pointerEvents: isFinished && isOnlyOnce ? 'none' : 'auto'
//         }}
//       />
//     </div>
//   )
// }
// export default WheelSpinner;


// import React from "react";
// import ReactDOM from "react-dom";
// import App from "./App";

// import "./styles.css";

// class Spinner extends React.Component {
//   state = {
//     list: [
//       "back",
//       "chest",
//       "lower arms",
//       "shoulders",
//       "waist",
//       "cardio",
//       "neck",
//       "lower legs",
//       "upper legs"
//     ],
//     // list: ["$100", "$500", "$9,999", "$1", "$60", "$1,000", "$4.44"],
//     // list: ["$100","$500","$9,999","$1","$60"],
//     radius: 75, // PIXELS
//     rotate: 0, // DEGREES
//     easeOut: 0, // SECONDS
//     angle: 0, // RADIANS
//     top: null, // INDEX
//     offset: null, // RADIANS
//     net: null, // RADIANS
//     result: null, // INDEX
//     spinning: false
//   };

//   componentDidMount() {
//     // generate canvas wheel on load
//     this.renderWheel();
//   }

//   renderWheel() {
//     // determine number/size of sectors that need to created
//     let numOptions = this.state.list.length;
//     let arcSize = (2 * Math.PI) / numOptions;
//     this.setState({
//       angle: arcSize
//     });

//     // get index of starting position of selector
//     this.topPosition(numOptions, arcSize);

//     // dynamically generate sectors from state list
//     let angle = 0;
//     for (let i = 0; i < numOptions; i++) {
//       let text = this.state.list[i];
//       this.renderSector(i + 1, text, angle, arcSize, this.getColor());
//       angle += arcSize;
//     }
//   }

//   topPosition = (num, angle) => {
//     // set starting index and angle offset based on list length
//     // works upto 9 options
//     let topSpot = null;
//     let degreesOff = null;
//     if (num === 9) {
//       topSpot = 7;
//       degreesOff = Math.PI / 2 - angle * 2;
//     } else if (num === 8) {
//       topSpot = 6;
//       degreesOff = 0;
//     } else if (num <= 7 && num > 4) {
//       topSpot = num - 1;
//       degreesOff = Math.PI / 2 - angle;
//     } else if (num === 4) {
//       topSpot = num - 1;
//       degreesOff = 0;
//     } else if (num <= 3) {
//       topSpot = num;
//       degreesOff = Math.PI / 2;
//     }

//     this.setState({
//       top: topSpot - 1,
//       offset: degreesOff
//     });
//   };

//   renderSector(index, text, start, arc, color) {
//     // create canvas arc for each list element
//     let canvas = document.getElementById("wheel");
//     let ctx = canvas.getContext("2d");
//     let x = canvas.width / 2;
//     let y = canvas.height / 2;
//     let radius = this.state.radius;
//     let startAngle = start;
//     let endAngle = start + arc;
//     let angle = index * arc;
//     let baseSize = radius * 3.33;
//     let textRadius = baseSize - 150;

//     ctx.beginPath();
//     ctx.arc(x, y, radius, startAngle, endAngle, false);
//     ctx.lineWidth = radius * 2;
//     ctx.strokeStyle = color;

//     ctx.font = "17px Arial";
//     ctx.fillStyle = "black";
//     ctx.stroke();

//     ctx.save();
//     ctx.translate(
//       baseSize + Math.cos(angle - arc / 2) * textRadius,
//       baseSize + Math.sin(angle - arc / 2) * textRadius
//     );
//     ctx.rotate(angle - arc / 2 + Math.PI / 2);
//     ctx.fillText(text, -ctx.measureText(text).width / 2, 0);
//     ctx.restore();
//   }

//   getColor() {
//     // randomly generate rbg values for wheel sectors
//     let r = Math.floor(Math.random() * 255);
//     let g = Math.floor(Math.random() * 255);
//     let b = Math.floor(Math.random() * 255);
//     return `rgba(${r},${g},${b},0.4)`;
//   }

//   spin = () => {
//     // set random spin degree and ease out time
//     // set state variables to initiate animation
//     let randomSpin = Math.floor(Math.random() * 900) + 500;
//     this.setState({
//       rotate: randomSpin,
//       easeOut: 2,
//       spinning: true
//     });

//     // calcalute result after wheel stops spinning
//     setTimeout(() => {
//       this.getResult(randomSpin);
//     }, 2000);
//   };

//   getResult = spin => {
//     // find net rotation and add to offset angle
//     // repeat substraction of inner angle amount from total distance traversed
//     // use count as an index to find value of result from state list
//     const { angle, top, offset, list } = this.state;
//     let netRotation = ((spin % 360) * Math.PI) / 180; // RADIANS
//     let travel = netRotation + offset;
//     let count = top + 1;
//     while (travel > 0) {
//       travel = travel - angle;
//       count--;
//     }
//     let result;
//     if (count >= 0) {
//       result = count;
//     } else {
//       result = list.length + count;
//     }

//     // set state variable to display result
//     this.setState({
//       net: netRotation,
//       result: result
//     });
//   };

//   reset = () => {
//     // reset wheel and result
//     this.setState({
//       rotate: 0,
//       easeOut: 0,
//       result: null,
//       spinning: false
//     });
//   };

//   render() {
//     return (
//       <div className="Spinner">
//         <h1>Spinning Prize Wheel React</h1>
//         <span id="selector">&#9660;</span>
//         <canvas
//           id="wheel"
//           width="500"
//           height="500"
//           style={{
//             WebkitTransform: `rotate(${this.state.rotate}deg)`,
//             WebkitTransition: `-webkit-transform ${
//               this.state.easeOut
//             }s ease-out`
//           }}
//         />

//         {this.state.spinning ? (
//           <button type="button" id="reset" onClick={this.reset}>
//             reset
//           </button>
//         ) : (
//           <button type="button" id="spin" onClick={this.spin}>
//             spin
//           </button>
//         )}
//         <div class="display">
//           <span id="readout">
//             YOU WON:{"  "}
//             <span id="result">{this.state.list[this.state.result]}</span>
//           </span>
//         </div>
//       </div>
//     );
//   }
// }

// const rootElement = document.getElementById("root");
// ReactDOM.render(<App />, rootElement);

// export default Spinner;
