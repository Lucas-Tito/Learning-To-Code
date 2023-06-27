import MeusDados from "./components/01MeusDados";
import MeusDados2 from "./components/02MeusDados";
import Temperatura from "./components/03Temperatura"

export default function App(){
    return(
        <>
            {/* <MeusDados/> */}
            <MeusDados2
                name="Lucas Tito Sampaio"
                info="ES (UFC)"
            />
            <Temperatura/>
        </>
    )
}