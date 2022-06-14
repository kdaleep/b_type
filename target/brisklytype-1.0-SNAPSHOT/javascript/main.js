//if mode is normal
import {randomNormalParagraph} from "./normal.js";
import {initNormalTyping} from "./normal.js";

//if mode is Intermediate
import {randomIntermediateParagraph} from "./Intermediate.js";
import {initIntermediateTyping} from "./Intermediate.js";

//if mode is expert
import {randomExpertParagraph} from "./Expert.js";
import {initExpertTyping} from "./Expert.js";

//if mode is blind typing
import {randomBlindParagraph} from "./blind.js";
import {initBlindTyping} from "./blind.js";

//if mode is digits
import {randomDigitParagraph} from "./digits.js";
import {initDigitTyping} from "./digits.js";



//if mode is none or default
import {randomParagraph} from "./defaultP.js";
import {initTyping} from "./defaultP.js";
import {inputField} from "./defaultP.js";
import {customTime} from "./timer.js";
import {closeResultDialog} from "./typingResult.js";


//declaration of variables  
let reTry = document.querySelector(".rBtn");
let done = document.querySelector(".done");

//calling of functions...

//retry button function
reTry.addEventListener("click", () =>
        {
            window.location.reload();
            document.getElementById('custom-time').value = '';
            document.getElementById('input-Field-Id').value = '';
            document.getElementById('submitQueryTxtArea').value = '';
        });
        
done.addEventListener("click", () =>
        {
            let Mode = document.querySelector('#mode').value;
            let done = document.querySelector(".startTypingButton");
            let typingArea = document.querySelector(".typing-area");
            let d = document.getElementById('menuModal');
            
            
            //using switch statement for modes
            switch (Mode) {
                case "Normal":

                    $('#menuModal').modal('hide');
                    done.style.visibility = "hidden";
                    typingArea.style.visibility = "visible";
                    customTime();
                    randomNormalParagraph();
                    inputField.addEventListener("input", initNormalTyping);
                    ;
                    break;
                    
                case "Intermediate":

                    $('#menuModal').modal('hide');
                    done.style.visibility = "hidden";
                    typingArea.style.visibility = "visible";
                    customTime();
                    randomIntermediateParagraph();
                    inputField.addEventListener("input", initIntermediateTyping);
                    ;
                    break;
                    
                case "Blind":

                    $('#menuModal').modal('hide');
                    done.style.visibility = "hidden";
                    typingArea.style.visibility = "visible";
                    customTime();
                    randomBlindParagraph();
                    inputField.addEventListener("input", initBlindTyping);
                    ;
                    break;
                    
                case "Expert":

                    $('#menuModal').modal('hide');
                    done.style.visibility = "hidden";
                    typingArea.style.visibility = "visible";
                    customTime();
                    randomExpertParagraph();
                    inputField.addEventListener("input", initExpertTyping);
                    ;
                    break;
                    
                case "Digits":

                    $('#menuModal').modal('hide');
                    done.style.visibility = "hidden";
                    typingArea.style.visibility = "visible";
                    customTime();
                    randomDigitParagraph();
                    inputField.addEventListener("input", initDigitTyping);
                    ;
                    break;

                default:
                    $('#menuModal').modal('hide');
                    done.style.visibility = "hidden";
                    typingArea.style.visibility = "visible";
                    customTime();
                    randomParagraph();
                    inputField.addEventListener("input", initTyping);
                    ;
            }


        });
//




//close Reslut dialog box
document.getElementById("rClose").addEventListener("click", closeResultDialog);
document.getElementById("rCloseOkBtn").addEventListener("click", closeResultDialog);