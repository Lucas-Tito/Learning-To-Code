import { useState } from "react";
import FilhoA from "./FilhoA";
import FilhoB from "./FilhoB";
import FilhoC from "./FilhoC";
import "../../styles/q2_style.css"
import CalcContext from "./CalcContext";

export default function Pai(){

    const array = [60, 73.5, 97.9, 82, 67]

    const [greater, setGreater] = useState()
    const [smaller, setSmaller] = useState()
    const [average, setAverage] = useState()

    let arrayDisplay = array.map((value)=>{
        return(
            <span>{value}</span>
        )
    })

    function changeState(flag, value){

        switch (flag) {
            case "av":
                setAverage(value)
                break;
            case "gr":
                setGreater(value)
                break;
            case "sm":
                setSmaller(value)
                break;
            default:
                break;
        }

    }
        

    return(
        <>
            <h2 align="center" style={{color:"white", marginTop:20}}>
                Cálculo Vetor</h2>
            
            <div className="array_display">
                {arrayDisplay}
            </div>
            
            <div className="calc_results">
                <h3>Maior: {greater}</h3>
                <h3>Menor: {smaller}</h3>
                <h3>Média: {average}</h3>
            </div>
            
            <div className="calc_btn">
                <CalcContext.Provider value={{
                    changeState: changeState, 
                    array: array
                }}>
                    <FilhoA/>
                    <FilhoB/>
                    <FilhoC/>
                </CalcContext.Provider>
            </div>
            
        </>
    )
}