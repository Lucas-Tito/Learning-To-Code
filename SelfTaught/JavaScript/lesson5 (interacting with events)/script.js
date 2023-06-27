var interactable_div = document.getElementById("interacting_div");

interactable_div.onclick = function(){
    interactable_div.innerText = "you clicked me"
    interactable_div.style.background = "#FF5E1E"
}


interactable_div.onmouseenter = function(){
    interactable_div.innerText = "you are on my reach"
}

interactable_div.onmouseleave = function(){
    interactable_div.innerText = "you can interact with me"
    interactable_div.style.background = "#D75C68"
}