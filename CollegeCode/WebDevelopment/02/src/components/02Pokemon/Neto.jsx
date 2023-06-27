import { useContext } from "react"
import PokemonContext from "./PokemonContext"

export default function Neto(){

    const pokeN = useContext(PokemonContext)

    return(
        <>
            <h2>Neto</h2>
            <img src={`https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokeN+2}.png`}/>
        </>
    )
}