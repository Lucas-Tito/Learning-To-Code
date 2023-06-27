const q2Promise = ()=> new Promise((resolve, reject) =>{
    setTimeout(
        () =>{
            let randomNumber = Math.floor(Math.random() * 10) + 1
            randomNumber=6
            if(randomNumber === 1){
                return reject({NUM:randomNumber, MSG:"connection error"})
            }
            else if(randomNumber === 2){
                return reject({NUM:randomNumber, MSG:"invalid data"})
            }
            else{
                resolve([
                    {id:0, nome:"Lucas", ira:10.00},
                    {id:0, nome:"Tiago", ira:10.00},
                    {id:0, nome:"Melo", ira:2.00}
                ])
            }    
        },
        3000
    )
})

export default q2Promise