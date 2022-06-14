export function closeResultDialog()
{
    let popup = document.getElementById("resultPopup");
    popup.style.visibility = "hidden";
    document.getElementById('custom-time').value = '';
    window.location.reload();
    
   
}
