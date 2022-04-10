
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--//bootstrap offline-->
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!--custom css-->
        <link rel="stylesheet" href="css/style.css" >

        <!--bootstrap cdn-->
        <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>-->   
        <!--title-->
        <title>brisklytype.com</title>
    </head>
    <body>

        <!--navbar-->
        <div class="container">
            <div class="row">
                <div class="col-1">
                    <div class="logo-area">
                        <img src="images/logo.png" alt="" width="65px" height="65px"/>

                    </div>
                </div>
                <div class="col-2">
                    <h3 id="site-name">brisklytype.com</h3>
                </div>
                <div class="col-6 offset-3">
                    <div class="nav">
                        <ul type="none">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Learn</a></li>
                            <li><a href="#">Course</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Signup</a></li>
                            <li><a href="#">i</a></li>                     
                        </ul>
                    </div>
                </div>
            </div>

        </div>

        <!--welcome msg or heading-->
        <div class="container-fluid">
            <div class="msg">
                <div class="row">
                    <div class="col offset-md-5">
                        <h2 id="typing-test">Typing Speed Test</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col offset-4">
                        <h2 id="type-in-an">Type in an active, quick,and <br> energetic way. </h2>                       
                    </div>
                </div>
            </div>
        </div>

        <!--textarea-->
        <div class="container-fluid">
            <div class="textarea-bg">   
                <div class="container">          
                    <!--typing area main body-->
                    <div class="typing-area">
                        <div class="row">
                            <div class="col-2">
                                <div class="word-min">
                                    <p id="word">0</p>
                                </div>
                                <label id="wordfooter">
                                    Words/min
                                </label>
                            </div>
                            <div class="col-2">
                                <div class="Character-min">
                                    <p id="char">0</p>
                                </div>
                                <label id="charfooter">
                                    Character/min
                                </label>
                            </div>
                            <div class="col-2">
                                <div class="accuracy">
                                    <p id="accuracy">0</p>
                                </div>
                                <label id="accufooter">
                                    %accuracy
                                </label>
                            </div>
                            <div class="col-2">
                                <a href="#">
                                    <div class="btn-normal">
                                        <p id="normal">Normal</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-2">
                                <a href="#">
                                    <div class="btn-intermediate">
                                        <p id="intermediate">Middle</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-2">
                                <a href="#">
                                    <div class="btn-expert">
                                        <p id="expert">Expert</p>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <!--textarea and timer-->
                        <div class="row">
                            <div class="col-2">
                                <div class="circular">
                                    <div class="inner"></div>
                                    <div class="outer"></div>
                                    <div class="numb">
                                          1
                                    </div>
                                    <div class="circle">

                                        <div class="bar left">
                                            <div class="progress"></div>
                                        </div>
                                        <div class="bar right">
                                            <div class="progress"></div>
                                        </div>
                                    </div>
                                </div>   
                                <input type="text" id="custom-time" placeholder="Time">
                                <button type="Submit" value="submit" onclick="customTime()"> Done</button>
                            </div>
                            <div class="col-10">

                                <div class="typing-area-border">
                                    <div class="text-field">
                                        <input type="text" class="input-field">
                                    </div>
                                    <div class="typing-text">
                                        <p id="text"></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 

            <div class="container">
                <div class="row">
                    <div class="col-2 offset-5">
                        <div class="mode">
                            <a href="#"> <p id="mode">Modes</p></a>
                        </div>
                    </div>
                </div>
            </div>
            <!--modes row 1-->

            <div class="container">
                <div class="row">
                    <div class="col-2 offset-1">
                        <div class="none">
                            <a href="#">  <p id="none">
                                    None
                                </p></a>
                        </div>  
                    </div>
                    <div class="col-2 offset-1">
                        <div class="digits">
                            <a href="#"> <p id="digits">
                                    Digits
                                </p></a>
                        </div>  
                    </div>
                    <div class="col-2 offset-1">
                        <div class="arrows">
                            <a href="#">  <p id="arrows">
                                    Arrows
                                </p></a>
                        </div>  
                    </div>
                    <div class="col-2 offset-1">
                        <div class="capitals">
                            <a href="#">   <p id="capitals">
                                    Capitals
                                </p></a>
                        </div>  
                    </div>
                </div>
            </div>


            <!--modes row 2-->
            <div class="container">
                <div class="row">
                    <div class="col-2 offset-1">
                        <div class="nospace">
                            <a href="#">  <p id="nospace">
                                    No Space
                                </p></a>
                        </div>  
                    </div>
                    <div class="col-2 offset-1">
                        <div class="simon">
                            <a href="#">   <p id="simon">
                                    Simon Says
                                </p></a>
                        </div>  
                    </div>
                    <div class="col-2 offset-1">
                        <div class="specials">
                            <a href="#">  <p id="specials">
                                    Specials
                                </p></a>
                        </div>  
                    </div>
                    <div class="col-2 offset-1">
                        <div class="blind">
                            <a href="#">  <p id="blind">
                                    Blind Typing
                                </p></a>
                        </div>  
                    </div>
                </div>
            </div>
        </div>

        <!--Definetion of terms-->
        <div class="container-fluid">
            <!--background-->
            <div class="terms-meaning-bg">
                <div class="container">
                    <!--inner background-->
                    <div class="terms-meaning-define-bg">
                        <div class="terms-meaning-def-1">
                            <div class="row">
                                <div class="col-4">
                                    <p id="wpm">Word per Minute (WPM) Typing Test</p>
                                </div>
                                <div class="col-8">
                                    <p id="wpm-definition">What is the WPM typing test? There are different types of tests for typing.
                                        This one is a typing test that expresses your typing skills in words per minute.
                                        The more you practice typing, and the more you test your typing speed,
                                        the higher your WPM score will be.
                                        Some online typing tests and typing test games focus only on WPM typing.
                                        The disadvantage of the WPM typing test is that you are only learning how to type fast.
                                        WPM typing tests do not show your accuracy.</p>
                                </div>
                            </div>
                        </div>
                        <div class="terms-meaning-def-2">
                            <div class="row">
                                <div class="col-4">
                                    <p id="cpm">What Is CPM and How Can You Calculate It?</p>
                                </div>
                                <div class="col-8">
                                    <p id="cpm-definition">The CPM stands for the number of characters you type per minute, including all the mistakes.
                                        “Corrected” scores count only correctly typed words.
                                        WPM is just the corrected CPM divided by five.
                                        This is the de facto international standard.</p>
                                </div>
                            </div>
                        </div>
                        <div class="terms-meaning-def-3">
                            <div class="row">
                                <div class="col-4">
                                    <p id="good-score">How Many Words per Minute Is a Good Score?</p>
                                </div>
                                <div class="col-8">
                                    <p id="good-score-definition">An average professional typist usually types around 65 to 75 WPM.
                                        More advanced positions require 80 to 95 (this is typically the minimum required for dispatch positions and other time-sensitive typing jobs).
                                        There are also some advanced typists whose work requires speeds above 120 WPM.</p>
                                </div>
                            </div>
                        </div>
                        <div class="terms-meaning-def-4">
                            <div class="row">
                                <div class="col-4">
                                    <p id="avg-speed">What Is the Average Typing Speed?</p>
                                </div>
                                <div class="col-8">
                                    <p id="avg-speed-definition">The average person types between 38 and 40 words per minute (WPM).
                                        That translates into between 190 and 200 characters per minute (CPM).
                                        However, professional typists type a lot faster, averaging between 65 and 75 WPM.</p>
                                </div>
                            </div>
                        </div>
                        <div class="terms-meaning-def-4">
                            <div class="row">
                                <div class="col-4">
                                    <p id="important">Why Is Typing Speed Important to Everyone?</p>
                                </div>
                                <div class="col-8">
                                    <p id="important-definition">The faster you type, the faster you will be able to communicate with others.
                                        You will be able to save a ton of time on any kind of work that requires typing. 
                                        At first, it will be a couple of extra minutes that you won’t really notice.
                                        Over time, the minutes will turn into hours of saved time that you can spend on other activities.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--javascript-->
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="javascript/main.js" type="module"></script>
        <script>
                                    function customTime()
                                    {
                                        var sTime = document.getElementById("custom-time").value;                                      
                                        var starttimer = sTime;
                                        var time = starttimer * 60;
//                                        console.log("Time in seconds :"+time);
                                        
                                        
                                        function updateCountdown()
                                        {

                                            var minutes = Math.floor(time / 60);
                                            
                                            var seconds = time%60;
                                            
                                            seconds = seconds < 1 ? '0' + seconds : seconds;
                                            document.querySelector(".numb").innerHTML =minutes+":"+seconds;
                                            
                                                        time--;
                                                    }
                                                    setInterval(updateCountdown, 1000);
                                                }
        </script>
    </body>
</html>
