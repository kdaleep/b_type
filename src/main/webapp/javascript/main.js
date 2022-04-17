import {randomParagraph} from "./defaultP.js";
import {initTyping} from "./defaultP.js";
import {inputField} from "./defaultP.js";
import {customTime} from "./timer.js";  
//declaration of variables  
let reTry=document.querySelector(".rBtn");

//calling of functions...

//retry button function
reTry.addEventListener("click",()=>
{
  window.location.reload();
  document.getElementById('custom-time').value = '';
  document.getElementById('input-Field-Id').value = '';
  
  
});
//
//timer
        $( "#start" ).one("click", function() { 
    	customTime();
         randomParagraph();
    }); 
    
//init typing
 inputField.addEventListener("input", initTyping);


