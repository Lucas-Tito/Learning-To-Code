import { useEffect, useState } from "react"

export default function Questao02(){
    
    const [flag, setFlag] = useState(true)
    const [img, changeImg] = useState("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png")
    console.log(flag);
    useEffect(()=>{
        
        if (flag) 
            changeImg("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png")
        else
            changeImg("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/25.png")
        
    }, [flag])
    return(
        <>
            <img
                src={img}
            />

            {/* *Quando o botão é clicado ele muda o estado da flag
                *A flag por sua vez está atralada ao useEffect
                *O useEffect verifica qual o estado da flag e modifica os estado da imagem de acordo com a flag         
            */}
            <button
                onClick={()=>setFlag((previousValue)=>!previousValue)}
            >
                Click-me
            </button>
        </>
    )
}