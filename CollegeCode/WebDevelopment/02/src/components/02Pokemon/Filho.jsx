import { useContext } from "react"
import PokemonContext from "./PokemonContext"
import Neto from "./Neto"

export default function Filho(){

    const pokeN = useContext(PokemonContext)
    
    return(
        <>
            <h2>Filho</h2>
            <img src={`https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokeN+1}.png`}/>

            <Neto/>
        </>
    )
}