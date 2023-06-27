import { useContext } from "react"
import CalcContext from "./CalcContext"

export default function FilhoA(){

    const { array, changeState } = useContext(CalcContext)

    function handleClick(){
        let greater = Math.max(...array)
        changeState("gr", greater)
    }

    return(
        <button
            name="greater_btn"
            onClick={handleClick}
        >
            Calcular Maior</button>
    )
}