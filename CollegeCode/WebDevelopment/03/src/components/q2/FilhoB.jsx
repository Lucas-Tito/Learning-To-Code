import { useContext } from "react"
import CalcContext from "./CalcContext"

export default function FilhoB(){

    const { array, changeState } = useContext(CalcContext)

    function handleClick(){
        let smaller = Math.min(...array)
        changeState("sm", smaller)
    }

    return(
        <button
        name="smaller_btn"
        onClick={handleClick}
        >
        Calcular Menor</button>
    )
}