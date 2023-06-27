import React from "react"
import PokemonContext from "./PokemonContext"

export default function Counter({setCounter}){
    let counter = React.useContext(PokemonContext)
    
    function add(){
        setCounter((prevValue) => ++prevValue)
    }

    function reduce(){
        setCounter((prevValue) => --prevValue)
    }

    return(
        <div className="counter_container">
            <div className="display">
                <span>{counter}</span>
            </div>
            <button className="reduce_btn" onClick={reduce}>-</button>
            <button className="add_btn" onClick={add}>+</button>
        </div>
    )
}
    
    