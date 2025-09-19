import { useState } from "react";
import EventComponent from "./component/eventcomponent";
import UseEffectcomponent from "./component/UseEffect";

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


    </div>
    
  );
}

export default App;
