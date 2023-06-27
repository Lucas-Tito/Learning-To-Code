import { useEffect, useState } from "react";
import q2Promise from "./q2Promise";

export default function Questao02(){
    
    const [printOnScreen, setPrintOnScreen] = useState("loading...")
    
    async function asyncCall() {
        let messageToPrint = ""

        try {
            const students = await q2Promise();

            students.map((currentStudent)=>{
                messageToPrint+=`Estudante ${currentStudent.nome} possui ${currentStudent.ira} de ira, `
            })
            setPrintOnScreen(messageToPrint)
        } catch (error) {
            setPrintOnScreen(error.MSG)
        }
        

        
    }

    useEffect(
        () => {

            asyncCall()
    
        },
        []
    )

    return(
        <h1>{printOnScreen}</h1>
    )
}