import { useContext } from "react"
import CalcContext from "./CalcContext"


export default function FilhoC(){

    const { array, changeState } = useContext(CalcContext)

    function handleClick(){
        let sum = 0
        array.map((element)=>{
            sum+=element
        })
        let average = sum / array.length
        changeState("av", average)
    }

    return(
        <button
        name="average_btn"
        onClick={handleClick}
        >
        Calcular Média</button>
    )
}