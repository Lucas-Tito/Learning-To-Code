n = 9
i = 1
soma = 0
while (i < n) {
    console.log("Valor de i: " + i);
    for (let j = 1; j <= i; j++) {
        
        console.log("j: " + j);
    }
    i = 2 * i
}
console.log("último valor de i: " + i);