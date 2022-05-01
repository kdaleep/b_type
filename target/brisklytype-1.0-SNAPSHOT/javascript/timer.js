export function customTime()
{
    var sTime = document.getElementById("custom-time").value;
    const outline = document.querySelector(".moving-outline circle");
    const outlineLength = outline.getTotalLength();
    var my_interval;
    outline.style.strokeDashoffset = outlineLength;
    outline.style.strokeDasharray = outlineLength;
    var starttimer = sTime;
    var time = starttimer * 60;
    let fakeDuration = time;

    const my_Timer = setInterval(function () {
        let progress = outlineLength - (time / fakeDuration) * outlineLength;
        outline.style.strokeDashoffset = progress;
        var minutes = Math.floor(time / 60);
        var seconds = time % 60;

        seconds = seconds < 1 ? '0' + seconds : seconds;
        document.querySelector(".numb").innerHTML = minutes + ":" + seconds;
        time--;
        if (minutes <= 0 && seconds <= 0)
        {
            clearInterval(my_Timer);
            resultPopUp();
        }
    }, 1000);

}
function resultPopUp()
{
    let popup = document.getElementById("resultPopup");
    popup.style.visibility = "visible";
    popup.style.transform = "scale(1)";
    popup.style.transition = "0.8s";
    
}



                          