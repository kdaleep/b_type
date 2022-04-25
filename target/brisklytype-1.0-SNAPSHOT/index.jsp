
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
        <%@include file="Webpages/navbar.jsp" %>

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
                        <div class="row" id="para_Body">
                            <div class="col-2">
                                <div class="timer-animation">
                                    <div class="player-container" >               
                                        <svg class="track-outline" width="453" height="453" viewBox="0 0 453 453" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <circle cx="226.5" cy="226.5" r="216.5" stroke="white" stroke-width="25"/>
                                        </svg>
                                        <svg class="moving-outline" width="453" height="453" viewBox="0 0 453 453" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <circle cx="226.5" cy="226.5" r="216.5" stroke="#f6511d" stroke-width="25"/>
                                        </svg>                         
                                        <div class="numb" style="margin-left: -50px;" id="timer"></div>     
                                    </div>
                                </div>
                                <div class="textarea_Start">
                                    <center>
                                        <input type="text" id="custom-time" placeholder="Time"><br>
                                        <button  id="retry" class="rBtn">Retry</button> 
                                        <button  id="start" class="sBtn">Start</button> 
                                    </center>
                                </div>
                            </div>
                            <div class="col-10">

                                <div class="typing-area-border">
                                    <div class="text-field">
                                        <input type="text" class="input-field" id="input-Field-Id">
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

            <!--result popup-->



            <div class="container">
                <div class="popUp">
                    <div class="rClose_icon">
                        <a href="#"> <img src="images/close.png" width="30px" height="30px" alt="" align="right"/></a>
                    </div>
                        <table align="center">
                            <tr>
                                <td><img src="images/research.png" alt="" width="50px" height="50px"/></td>
                                <td><h1>Result</h1></td>
                            </tr>
                        </table>
                    <div class="row">
                        <div class="col-6">
                            <div class="rWord-div">
                            <h4>WPM</h4>
                            <p id="rWpm">0</p>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="rMistake-div">
                            <h4>Mistakes</h4>
                            <p id="rMistakes">0</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <div class="rNwpm-div">
                            <h4>NWPM</h4>
                            <p id="rNwpm">0</p>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="rAccuracy-div">
                            <h4>Accuracy</h4>
                            <p id="rAccuracy">0</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                           <canvas id="myChart"></canvas>
                        </div>
                    </div>
                    <a href="#"><img src="images/check.png" width="50px" height="50px" alt=""/></a>
                </div>
            </div>


            <!--//Modes--> 



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
        <div class='container-fluid'>
            <div class="Definetion-Bg">
                <div class="container">
                    <div class="innerDefinetion">
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Word per Minute (WPM) Typing Test</h4>
                                        <hr>
                                        <p class="card-text">Words per minute (WPM) is the number of words processed per minute, most commonly used to measure and denote the speed of typing or reading speed.
                                            For measuring typing speed, each word is standardized to be five characters or five keystrokes long, which include white space.</p>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card">
                                    <div class="card-body">                                   
                                        <h4 class="card-title">Is This Really a Free Typing Test You Can Use?</h4>
                                        <hr>
                                        <p class="card-text">As the makers of brisklytype, customer service software for businesses, we wanted to provide the community of our customers with a free typing test.
                                            This way, they can consistently practice typing and improve their typing skills.
                                            We've also made this tool accessible to every visitor of our page. Our tool is a free typing speed test with a WPM score, but it can be also used as a typing speed test for kids.</p>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card">
                                    <div class="card-body">                                   
                                        <h4 class="card-title">What Is CPM and How Can You Calculate It?</h4>
                                        <hr>
                                        <p class="card-text">The CPM stands for the number of characters you type per minute, including all the mistakes.
                                            “Corrected” scores count only correctly typed words. WPM is just the corrected CPM divided by five. 
                                            This is the de facto international standard.</p>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card">
                                    <div class="card-body">                              
                                        <h4 class="card-title">What Is the Average Typing Speed?</h4>
                                        <hr>
                                        <p class="card-text">The average person types between 38 and 40 words per minute (WPM).
                                            That translates into between 190 and 200 characters per minute (CPM).
                                            However, professional typists type a lot faster, averaging between 65 and 75 WPM.</p>

                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">What does NWPM mean?</h4>
                                        <hr>
                                        <p class="card-text">Alternatively referred to as NWPM, which is short for net words per minute,
                                            NWAM is short for net words a minute. It is the same as the GWAM (gross words a minute), minus any errors.
                                            For example, if you typed 400 words in five minutes; divide 400 into 5 to get 80 GWAM.</p>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card">
                                    <div class="card-body">                                   
                                        <h4 class="card-title">What does wpm or GWPM stand for?</h4>
                                        <hr>
                                        <p class="card-text">Alternatively referred to as GWPM (gross words per minute), GWAM is short for gross words a minute and is similar to WPM,
                                            except it does not account for any errors. GWAM is often used as a measurement for users who are learning to type and is later replaced by WPM.</p>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card">
                                    <div class="card-body">                                   
                                        <h4 class="card-title">What is the fastest typing technique?</h4>
                                        <hr>
                                        <p class="card-text">Touch-typing is also generally faster than hunting and pecking.
                                            This is because keeping your hands still and making use of all eight fingers and thumbs on the space bar is more efficient than moving them around the keyboard in search of individual keys.</p>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card">
                                    <div class="card-body">                              
                                        <h4 class="card-title">Why Is Typing Speed Important to Everyone?</h4>
                                        <hr>
                                        <p class="card-text">The faster you type, the faster you will be able to communicate with others.
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
        </div>

        
        <!--javascript-->
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!--        <script src="javascript/js/chart.js" type="text/javascript"></script>
        <script src="javascript/js/chart.js" type="text/javascript"></script>-->
        
        <!--//jquery-->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="javascript/main.js" type="module"></script>   
    </body>
</html>
