import Pai from "./components/atividade01/questao01/01Pai";
import * as PC from "./components/atividade01/02MeuPC"
import World from "./components/atividade01/03Batalha";
import { Arena } from "./components/atividade01/03Batalha";

export default function App(){
    return(
        <>
            <h1 className="questionLabel">Questão 1</h1>
            <Pai/>
            <br/>
            <hr/>
            <br/>

            <h1 className="questionLabel">Questão 2</h1>
            <div className="PC">
                <PC.Memoria
                    nome="T-FORCE"
                    preco={10000}
                />
                <PC.PlacaDeVideo
                    nome="2060 super"
                    preco={25000}
                />
                <PC.PlacaMae
                    nome="B550"
                    preco={35000}
                />
            </div>

            <br/>
            <hr/>
            <br/>
            
            <h1 className="questionLabel">Questão 3</h1>

            <World>
                <Arena/>
            </World>
        </>
    )
}