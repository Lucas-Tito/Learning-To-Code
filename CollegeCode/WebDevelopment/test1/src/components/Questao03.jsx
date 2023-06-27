import { useEffect, useState } from "react";

export default function Questao03(){

    // primeiro os dados são recuperados dentro da função assync
    // é feito a média da população
    // depois os elementos são comparados e os que estiverem acima da média são guardados em greaterCapitalsArray
    // esse array depois é armazenado no estado greaterCapitals para que os valores sejam printados na tela
    // para printalos é usada a função map que passa em cada elemento retornando um h4 com o nome da capital

    var greaterCapitalsArray = []
    const [greaterCapitals, setGreterCapitals] = useState([])


    
    console.log("umumculus");   
    console.log(greaterCapitals);

    
    async function asyncCall() {
        let messageToPrint = ""
        var media =0 
        
    
        
        
        try {
            const capitals = await fetch("https://restcountries.com/v3.1/region/europe?fields=capital,population")
                                    .then((response) => {
                                                            return response.json()
                                                        }
                                        )
                

            console.log("amogus");
            console.log(capitals);

            capitals.map((currentCapital)=>{
                media += currentCapital.population
            })
            media/=capitals.length
            
            capitals.map((currentCapital)=>{
                if(currentCapital.population > media)
                    greaterCapitalsArray.push(currentCapital.capital[0])
            })
            setGreterCapitals(greaterCapitalsArray)
            // setPrintOnScreen(messageToPrint)
        } catch (error) {
            console.log(error);
        }    
           

    }
    
    
    
    useEffect(()=>{
        
        asyncCall()
        console.log("build");
        console.log(greaterCapitals);
    },[])

    function renderSus(){
        return (
            greaterCapitals.map((element) => {
              return <h4>{element}</h4>
            })
          );
       }
       console.log("sus"+greaterCapitals[0]);
    return(
        <>
            {greaterCapitals.map((capital)=><h3>{capital}</h3>)}
        </>
    )
}