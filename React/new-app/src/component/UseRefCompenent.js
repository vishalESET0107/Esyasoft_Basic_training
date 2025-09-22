import React from "react"

export default function UseRefComponent (){
    const ref = UseRef(NULL);
    const buttonHandler =() => {

    ref.current.focus();
    }
    return (
        <div>
            <input ref = {ref}/>
            <button onClick = {buttonHandler}>focus</button>

        </div>
        
    )
    
}