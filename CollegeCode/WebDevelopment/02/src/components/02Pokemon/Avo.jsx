import { useContext, useState } from "react";
import PokemonContext from "./PokemonContext";
import Filho from "./Filho";
import Counter from "./Counter";

export default function Avo(){

    const [pokeN, setPokeN] = useState(useContext(PokemonContext))

    return(
        <div className="q2"> 
            <h1 className="q_header">Questão 2 e 3</h1>
            <PokemonContext.Provider value={pokeN}>
                <Counter setCounter={setPokeN}/>

                <h2>Avó</h2>
                <img src={`https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokeN}.png`}/>

                <Filho/>
            </PokemonContext.Provider>
        </div>
    )
}