import { useState } from "react"
import Header from "./components/q1/Header"
import "./index.css"
import Results from "./components/q1/Results"
import CounterContext from "./components/q1/CounterContext"
import CitiesDisplay from "./components/q1/CitiesDisplay"
import citiesData from "./citiesData"
import Pai from "./components/q2/Pai"

export default function App(){

    // begin of question 1 content
    const [counters, setCounters] = useState({
        Fortal:0,
        Quixa:0,
        SGA:0,
        siupe:0
    })

    let specificCounter = Object.entries(counters)
    console.log(specificCounter);

    let citiesDisplay = citiesData.map((city)=>{
        return(
            <CitiesDisplay
                key={city.id}
                data={city}
                // selects specific counter state using counter entries
                specificCounter={specificCounter[city.id][1]}
                setCounters={setCounters}
            />
        )
    })
    // end of question 1 content

    return(
        <>
            <CounterContext.Provider value={counters}>
                <Header/>
                <div className="q1">
                    <h1 
                        align="center"
                        style={{color:"#53C1DE", paddingTop:20}}
                    >Questão 1</h1>

                    <div id="cities_root">
                        {citiesDisplay}
                    </div>

                    <Results/>
                </div>
            </CounterContext.Provider>

            <div className="q2">
                <h1 
                        align="center"
                        style={{color:"#53C1DE"}}
                >Questão 2</h1>
                <Pai/>
            </div>
        </>
    )
}