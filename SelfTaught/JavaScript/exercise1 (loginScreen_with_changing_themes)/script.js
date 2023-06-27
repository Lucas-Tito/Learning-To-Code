var currentTime = Number(new Date().getHours())
var theme = document.getElementById("theme")

if(currentTime>=6 && currentTime<12)
    theme.href="themes/morning.css"

else if(currentTime>=12 && currentTime<18)
    theme.href="themes/afternoon.css"
    
else
    theme.href="themes/night.css"

