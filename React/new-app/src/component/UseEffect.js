import React , {useEffect, useState}from "react";

const suggestionMaster = [
    "laptop",
    "mobile",
    "phone"
];

export default function UseEffectcomponent(){

    const [recommendation , setRecommendation ] = useState(suggestionMaster);
     const [search , setSearch] = useState("");

    useEffect(()=>{
        console.log("inside useeffects")
        setRecommendation(suggestionMaster.filter((elem) =>elem.includes(search)))
    }

     , [search]);  
   
    return (
        <div>

            <input value = {search} onChange={(e)=>setSearch(e.target.value)} />
            {
                recommendation.map((element)=><div>{element}</div>)
            }
        </div>
    )

}