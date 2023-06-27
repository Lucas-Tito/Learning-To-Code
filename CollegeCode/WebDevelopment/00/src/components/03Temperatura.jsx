export default () => {
    let k = kelvin(10)
    return(
        <>
            <br/><br/>
            <h1>Temperatura</h1>
            <br/>
            <div className="results">
                <h2>C to F: {celsiusParaFahrenheit(32)}</h2>
                <h2>F to C: {fahrenheitParaCelsius(50)}</h2>
                <h2>
                    <p>K to C: {k.c}</p>
                    <p>K to F: {k.f}</p>
                </h2>
            </div>
            
        </>
    )
}

const celsiusParaFahrenheit = (c) => {
    return (c * (9/5)) + 32
}

const fahrenheitParaCelsius = (f) => {
    return (f - 32) * (5/9)
}

const kelvin = (k) => {

    // 0 K − 273,15 = -273,1 °C
    // (0 K − 273,15) × 9/5 + 32 = -459,7 °F
    let c = k-273.15
    let f = (k-273.15) * (9/5) + 32

    return {
                c: c ,
                f: f
            }

}