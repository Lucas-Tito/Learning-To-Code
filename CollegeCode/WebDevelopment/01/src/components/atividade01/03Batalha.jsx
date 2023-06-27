import baki from "../../img/Baki.webp"
import yujiro from "../../img/Yujiro.webp"

export default function World(props){
    return(
        <div>
            {props.children}
        </div>
    )
    
}

export function Arena(){
    return(
        <div className="arena">
            <Hero name="Baki"/>
            <Enemy name="Yujiro" img=""/>
        </div>
    )
}


function Hero(props){
    return(
        <div className="warrior">
            <h1>{props.name}</h1>
            <img src={baki}/>
        </div>
    )
}

function Enemy(props){
    return(
        <div className="warrior">
            <h1>{props.name}</h1>
            <img src={yujiro}/>
        </div>
    ) 
}