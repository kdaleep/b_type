import {randomParagraph} from "./defaultP.js";
import {startTyping} from "./defaultP.js";

const starttimer=1;
let time=starttimer*60;
const numb= document.querySelector(".numb");

setInterval(updateCountdown,1000);
function updateCountdown()
{
    const minutes=Math.floor(time/60);
    let seconds=time%60;
    seconds=seconds<1? '0' +seconds:seconds;
    numb.innerHTML=`${minutes}:${seconds}`;
     time--;    
        
}

//random paragraph generator
randomParagraph();
startTyping();


