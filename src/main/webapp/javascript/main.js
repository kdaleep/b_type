import {randomParagraph} from "./defaultP.js";
import {initTyping} from "./defaultP.js";
import {inputField} from "./defaultP.js";
//import {customTime} from "./timer.js";



//calling of functions...

//timer

//setInterval(updateCountdown, 1000);
//random paragraph generator
randomParagraph();
inputField.addEventListener("input", initTyping);
