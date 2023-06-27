const findUserLocation = () => {

    const success = (position) => {
        console.log(position)
        const latitude = position.coords.latitude;
        const longitude = position.coords.longitude;

        const geoAPIurl = `https:/api.bigdatacloud.net/data/reverse-geocode-client?
        latitude=${latitude}&longitude=${longitude}&localityLanguage=en`
        


        fetch(geoAPIurl)
        .then(res => res.json())
        .then(data => {
            alert(`Looks like you live in ${data.city}, ${data.principalSubdivision}`)
        })

        
    }

    const error = () => {
        window.alert("I wasn't able to retreat your location :(")
    }

    navigator.geolocation.getCurrentPosition(success, error)

}

document.querySelector("button#findme_btn").addEventListener('click', findUserLocation)

