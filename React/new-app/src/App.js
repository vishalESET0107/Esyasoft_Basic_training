import { useState } from "react";
import EventComponent from "./component/eventcomponent";
import UseEffectcomponent from "./component/UseEffect";
import UseRefComponent from "./component/UseRefCompenent";

function App() {
/*
  const [counter,setCounter] = useState(0);

  const incre = () => {

    setCounter (counter+1)
  }
  const decre =() => {
    setCounter(counter-1)
  }
    */
  return (
    <div>{/*
      <div>{counter}</div>
      <button onClick={incre}>increment</button>
      <button onClick={decre}> decremnet</button>
    */}
    <EventComponent />
    <UseEffectcomponent/>
    <UseRefComponent />


    </div>
    
  );
}

export default App;
import logo from './logo.svg';
import './App.css';
import React from 'react';
import {useState,createContext} from 'react';
import Usecontext from './Component/Usecontext';
import GopalComponent from './Component/GopalComponent';


const Context = React.createContext(null);
export {Context};

function App() {
  
  const [theme, setTheme] = useState("light");
  const [count, setcount] = useState();
  return (
    <div className="App">
      
      <Context.Provider value={{ 
      theme, 
      setTheme, 
      count, 
      setcount 
      }}>
        <>Welcome to react app</>
      <Usecontext/>
      <GopalComponent/>
      </Context.Provider>
    </div>
  );
}

export default App;

import React from 'react'

export default function Callanapi() {
  return (
    <div>
      Hello
    </div>
  )
}
