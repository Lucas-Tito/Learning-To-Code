var name = prompt("Say your name.")
var n1 = Number(prompt("enter a number."))
var n2 = Number(prompt("enter other number."))

var sum = n1 + n2
sum = sum.toLocaleString("pt-BR", {style: "currency", currency: "BRL"}) //transforms sum string to potrait currency

alert(`${name}, the sum results is ${sum}`) //to this method (template string) work you need to use crasis

