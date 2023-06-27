import { useContext, useEffect, useState } from "react"
import CounterContext from "./CounterContext";

export default function Results(){

    const [results, setResults] = useState({
        moreVoted:"",
        lessVoted:""
    })

        /*each time counters updates, this function
      goes trough the object counters and calcs the more and less voted
    */

      const counters = useContext(CounterContext)
      useEffect(()=>{
        let cities = Object.entries(counters)
        
        let moreVoted = {name:"", value:0}
        let lessVoted = {name:"", value:Number.POSITIVE_INFINITY}

        cities.forEach(element => {
            if(moreVoted.value < element[1]){
                moreVoted.name = element[0]
                moreVoted.value = element[1]
            }
            if (lessVoted.value>element[1]) {
                lessVoted.name = element[0]
                lessVoted.value = element[1]
            }
        });
        setResults(()=>{
            return{
                moreVoted:moreVoted.name,
                lessVoted:lessVoted.name
            }
        })
    }, [counters])

    return(
        <div 
            className="results"
            style={{color:"white", paddingTop:20}}
            align="center">
                <h2>Mais votada: {results.moreVoted}</h2>
                <h2>Menos votada: {results.lessVoted}</h2>
        </div>
    )
}