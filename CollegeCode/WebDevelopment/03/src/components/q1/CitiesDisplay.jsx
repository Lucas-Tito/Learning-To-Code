import "../../styles/cities_display.css"

export default function CitiesDisplay(props){

    function handleCounter(event) {
        const {name, value} = event.target

        props.setCounters((prevCounterData) =>{
            return{
                ...prevCounterData,
                [name]: Number(value)+1
            }
        })
    }

    return(
        <div className="display_container">
            <div className="cities_display">
                <p>{props.data.full}: {props.specificCounter}</p>
            </div>

            <div className="vote_btn">
                <button
                    onClick={handleCounter}
                    name={props.data.abbreviation}
                    value={props.specificCounter}>Vote {props.data.abbreviation}</button>
            </div>
        </div>
    )
}