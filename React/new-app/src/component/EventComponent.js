import React from 'react';

function EventComponent() {

    const onchangehandler = (e)=>{
        console.log(e.target.value)
        if(e.target.value = 'vishal'){
            console.log('noice')}
            else
            {console.log('bad')}
        
    }
    return (
        <>
            <p>Welcome to events</p>

            <button onClick={() => { console.log("button"); }}>
                Click me
            </button>

            <div
                style={{ background: 'blue', padding: '50px' }}
                onMouseEnter={() => console.log("hovering")}
            >
                This is div
            </div>

            <input type ='text' onChange={onchangehandler} />

            
            
        </>
    );
}

     
export default EventComponent;
