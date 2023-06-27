import { useEffect, useState } from "react"

const Questao01X = () =>{

    const correntistas=[
        {nome: "Sicrano", aplic: {pp: 856.4, rf: 50.4, cc: 34.0}},
        {nome: "Beltrano", aplic: {pp: 0.0, rf: 700.67, cc: 800}},
        {nome: "Fulano", aplic: {pp: 5000.00, rf: 0.0, cc: 500}}
    ]

    const [maiorCorrentista, setMaiorCorrentista] = useState({media:-1, nome:"sus"})
    const [media, setMedia] = useState([{media:0, nome:""}])
    useEffect(()=>{
       console.log(media);
       //compara os correntista e define qual possui a maior média
        media.forEach(element => {
            
            if(element.media>maiorCorrentista.media)
                setMaiorCorrentista(element)
        });
        
    }, [media])

    return(
        <>
            
            <Questao01Y
                correntistasArray={correntistas}
                setMedia={setMedia}
            />
            <h1>Nome: {maiorCorrentista.nome}</h1>
        </>
    )
}

//Esse componente pega cada correntista passado pelo props e retorna para o pai um array de objetos
//cada objeto contem o nome do correntista e sua media
const Questao01Y = (props) =>{
    var [correntista1, correntista2, correntista3] = props.correntistasArray

    useEffect(()=>{
        props.setMedia([
            {media: (correntista1.aplic.pp + correntista1.aplic.rf + correntista1.aplic.cc)/3, nome:correntista1.nome},
            {media: (correntista2.aplic.pp + correntista2.aplic.rf + correntista2.aplic.cc)/3, nome:correntista2.nome},
            {media: (correntista3.aplic.pp + correntista3.aplic.rf + correntista3.aplic.cc)/3, nome:correntista3.nome}
          ])
    }, [])
    
}

export default Questao01X