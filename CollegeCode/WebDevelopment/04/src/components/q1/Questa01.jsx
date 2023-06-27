import { useEffect, useState } from "react";
import q1Promise from "./q1Promise";

export default function Questao01(){
    
    const [printOnScreen, setPrintOnScreen] = useState("loading...")
    console.log("oi");
    useEffect(
        () => {
            let messageToPrint=""
            q1Promise.then( (students)=> {
                
                students.map((currentStudent)=>{
                    messageToPrint+=`Estudante ${currentStudent.nome} possui ${currentStudent.ira} de ira, `
                })
                messageToPrint != null ? setPrintOnScreen(messageToPrint):console.log("tá nulo");
            }).catch((message)=> {
                setPrintOnScreen(message.MSG)
            })
            
        },
        []
    )

    return(
        <h1>{printOnScreen}</h1>
    )
}