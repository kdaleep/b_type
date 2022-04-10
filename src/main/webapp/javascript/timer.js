export function customTime()
{
let sTime = document.getElementById("custom-time").value;
let starttimer =sTime;
let time = starttimer * 60;

const numb = document.querySelector(".numb");

 function updateCountdown()
{
    const minutes = Math.floor(time / 60);
    let seconds = time % 60;
    seconds = seconds < 1 ? '0' + seconds : seconds;
    numb.innerHTML = `${minutes}:${seconds}`;
    time--;
}
}