export default function Filho(props){
    
    function Message(){
        let message, imc = calcImc(props.altura, props.peso)
    
        if(imc < 18)
            message="Abaixo do peso"
        else if(imc > 25)
            message="Acima do peso"    
        else
            message="peso ideal"
    
        return(
            <h3>{message}</h3>
        )
    }
    
    return(
        
            <Message/>
        
    )
}



function calcImc(altura, peso){
    return peso/(altura*altura)
}