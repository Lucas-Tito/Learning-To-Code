var h1 = document.getElementsByTagName('h1')[0]
var button = document.getElementsByTagName('button')[0] //gets first element that has the given tag

var buttonClicked = false;

button.onclick=function(){
    
    if(buttonClicked)
        h1.style.color = "white"
    else
        h1.style.color = "#D75C68"
        
    buttonClicked = !buttonClicked;
}