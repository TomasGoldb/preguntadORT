let tiempo=0;

function setearTiempo(temp) {
    tiempo=temp;
    let timerDisplay = document.getElementById('timer');
    let barraTiempo = document.getElementById('barra-tiempo');
        let totalTime = tiempo; 
        let remainingTime = totalTime;
        let tamañoBarra=80;
        let disminucion=Math.ceil(tamañoBarra/totalTime)*1.06;
        barraTiempo.style.width=tamañoBarra;
        let countdown = setInterval(function() {
            remainingTime--;
            tamañoBarra-=disminucion;
            console.log(remainingTime);
            barraTiempo.style.width=tamañoBarra+"%";

            timerDisplay.innerText = remainingTime;
    
            if (remainingTime <= 0) {
                clearInterval(countdown);
                 window.location.href='/Home/Ruleta';
                
            }
        }, 1000);
      }
    

    
