import React, { useState } from "react";

function LoginComponent (){

    const [username , setUsername] = useState("")
    const [password , setPassword] = useState("")

    const onLoginHandler = () => {
        alert ("login clicked")
        if(username !== "username"){
            alert("invalid ")
            return;
        } 
         if(username !== "username"){
            alert("invalid ")
            return;
    }


    return (
        <div>
            <input type='text' value={username} onChange={(e) => (setUsername(e.targert.value))} placeholder="ergeg"   />
            <input type='text' onChange={(e) => (set)} placeholder="enter username"/>
            <input type ='text' placeholder="enter pass"/>

        </div>
    )
}
}