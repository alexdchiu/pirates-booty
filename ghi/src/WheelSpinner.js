import React, { Component } from 'react'

import WheelComponent from 'react-wheel-of-prizes'
import './react-wheel-of-prizes/index.css'

const WheelSpinner = ({setResult, segments}) => {
  // const segments = [
    // 'better luck next time',
    // 'won 70',
    // 'won 10',
    // 'better luck next time',
    // 'won 2',
    // 'won uber pass',
    // 'better luck next time',
    // 'won a voucher'
  // ]
  const palate = [ 
    "#03ecfc",/*cyan*/
    "#03dbfc",/*light blue*/
    "#38a874",/*ocean green*/
    "##03fc80",/*spring green*/
    "#fcb103",/*yellow sea*/
    "#fc03b5"/*shocking pink*/
  ]
  const colorFromPalate = () => palate[Math.floor(Math.random() * palate.length)]

  const color = () => "#"+Math.floor(Math.random()* 16777215).toString(16)
  const segColors = new Array(segments.length).fill("").map(colorFromPalate)
   console.log(segColors)
  
  const onFinished = (winner) => {
    setResult(winner)
  }
  return (
    <WheelComponent
      segments={segments}
      segColors={segColors}
      winningSegment='won 10'
      onFinished={(winner) => onFinished(winner)}
      primaryColor='black'
      contrastColor='white'
      buttonText='Spin'
      isOnlyOnce={false}
      size={290}
      upDuration={100}
      downDuration={1000}
      fontFamily='Arial'
    />
  )
}

export default WheelSpinner;