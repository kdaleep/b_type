
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.briskly.type.helper.connectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>   
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>brisklytype</title>

        <!--custom css-->
        <link rel="stylesheet" href="css/style.css" >
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    </head>
    <body>

        <!-- -----------------------------------------------------------           
                    
                    navbar 
                    
         -----------------------------------------------------------           -->

        <%@include file="Webpages/navbar.jsp" %>     

        


        <!-- -----------------------------------------------------------           
                   
                  welcome msg or heading
                   
        -----------------------------------------------------------           -->

        <!--welcome msg or heading-->
        <div class="container-fluid " id="headingBg">
            <div class="container">
                <div class="grid">
                    <div class="g-col-12 g-col-md-4">
                        <div class="typingSpeedTest">
                            <h2 id="tSP">Typing Speed Test</h2>
                        </div>
                    </div>            
                </div>
                <div class="grid">
                    <div class="g-col-12 g-col-md-4">
                        <div class="typeInAn">
                            <h1 id="tia" class="text-sm-start lg-start"">Type in an active ,quick and energetic way</h1>                         
                        </div>
                    </div>            
                </div>
            </div>
        </div>
                       

        <!-- -----------------------------------------------------------           
                    
                   textarea  
                    
         -----------------------------------------------------------           -->



        <div class="container-fluid">
            <div class="textarea-bg">   

                <!-- -----------------------------------------------------------           
                   
                  Start typing button home page
                   
        -----------------------------------------------------------           -->

                <div class="container">
                    <div class="startTypingButton">
                        <div class="grid">
                            <div class="g-col-12 g-col-md-4">
                                <button type="button" class="btn btn-lg" id="sTB" style="background-color:#00a6ed;color:white;" data-bs-target="#menuModal"
                                        data-bs-toggle="modal">Start Typing</button>
                            </div>
                        </div>
                    </div>




                    <!-- -----------------------------------------------------------           
                                       
                                      Start typing button home page code end.....
                                       
                            -----------------------------------------------------------           -->

                    <!-- -----------------------------------------------------------           
                                       
                                      Option menu popup.....
                                       
                            -----------------------------------------------------------           -->


                    <div class="modal" id="menuModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header" style="background-color:#f6511d;">
                                    <h5 class="modal-title text-white fs-3" id="exampleModalLabel">brisklytype.com</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="menuBody">
                                        <div class="grid">
                                            <div class="g-col-6 pb-4"><label class="text fs-4">Time</label></div>
                                            <div class="g-col-6 pb-4">                                             
                                                <select class="form-select" aria-label="Default select example" id="time" autocomplete="off">
                                                    <option selected disabled hidden>Choose Time</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="5">5</option>
                                                    <option value="10">10</option>
                                                    <option value="30">30</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="grid">
                                            <div class="g-col-6 pb-4"><label class="text fs-4">Mode</label></div>
                                            <div class="g-col-6 pb-4">                                             
                                                <select class="form-select" aria-label="Default select example" id="mode" autocomplete="off">
                                                    <option selected>Default</option>
                                                    <option value="Normal">Normal</option>
                                                    <option value="Intermediate">Intermediate</option>
                                                    <option value="Expert">Expert</option>
                                                    <option value="Blind">Blind typing</option>
                                                    <option value="Digits">Digits</option>
                                                </select>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <div class="doneBtn">
                                        <button type="button" class="done">Done</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

            <!-- -----------------------------------------------------------           
                               
                              Option menu popup code end.....
                               
                    -----------------------------------------------------------           -->




            <div class="container">          
                <!--typing area main body-->
                <div class="typing-area">
                    <div
                        class="row">
                        <div class="col-2">
                            <div class="word-min">
                                <p id="word">0</p>
                            </div>
                            <label id="wordfooter">
                                Words
                            </label>
                        </div>
                        <div class="col-2">
                            <div class="Character-min">
                                <p id="char">0</p>
                            </div>
                            <label id="charfooter">
                                Character
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
                    </div>


                    <!-- -----------------------------------------------------------           
                                
                                textarea and timer 
                                
                     -----------------------------------------------------------           -->



                    <div class="row" id="para_Body">
                        <div class="col-2">
                            <div class="timer-animation">
                                <div class="player-container" >               
                                    <svg class="track-outline" width="453" height="453" viewBox="0 0 453 453" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="226.5" cy="226.5" r="216.5" stroke="white" stroke-width="20"/>
                                    </svg>
                                    <svg class="moving-outline" width="453" height="453" viewBox="0 0 453 453" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="226.5" cy="226.5" r="216.5" stroke="#f6511d" stroke-width="20"/>
                                    </svg>                         
                                    <div class="numb" style="margin-left: -55px;margin-top:65px" id="timer"></div>     
                                </div>
                            </div>
                            <div class="textarea_Start">
                                <center>
                                    <input type="hidden" id="custom-time" placeholder="Time"><br>
                                    <button  id="retry" class="rBtn">Retry</button> 
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



        <!-- -----------------------------------------------------------           
                    
                    result popup   
                    
         -----------------------------------------------------------           -->


        <div class="container">
            <div class="row">
                <div class="col-10 offset-3">                 
                    <div class="popUp" id="resultPopup" >             
                        <div class="rClose_icon">
                            <img src="images/close.png" width="30px" height="30px" alt="" align="right" id="rClose"/>
                        </div> 

                        <div class="rHeading">
                            <table align="center">
                                <tr>
                                    <td><img src="images/research.png" alt="" width="50px" height="50px"/></td>
                                    <td><h2>Typing Test Result</h2></td>
                                </tr>
                            </table>  
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-4 offset-2">
                                    <div class="rWord-div">
                                        <h4 align="center">WPM</h4>
                                        <p id="rWpm" align="center">0</p>
                                    </div>
                                </div>
                                <div class="col-4 ">
                                    <div class="rMistake-div">
                                        <h4 align="center">Mistakes</h4>
                                        <p id="rMistakes" align="center">0</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-4 offset-2">
                                    <div class="rNwpm-div">
                                        <h4 align="center">NWPM</h4>
                                        <p id="rNwpm" align="center">0</p>
                                    </div>
                                </div>
                                <div class="col-4 ">
                                    <div class="rAccuracy-div">
                                        <h4 align="center">Accuracy</h4>
                                        <p id="rAccuracy" align="center">0</p>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="container">
                            <div class="row">
                                <div class="col-2 offset-5">  
                                    <div class="rOk">
                                        <img src="images/check.png" width="50px" height="50px" alt="" id="rCloseOkBtn"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <!-- -----------------------------------------------------------           
                        
                        result popup  end  
                        
             -----------------------------------------------------------           -->


        <!-- -----------------------------------------------------------           
                    
                    definetion of terms 
                    
         -----------------------------------------------------------           -->



        <div class='container-fluid'>
            <div class="Definetion-Bg">
                <div class="container">
                    <div class="innerDefinetion">
                        <div class="d-flex justify-content-center p-2" style="color:#00a6ed;">
                            <h1>FAQS</h1>
                        </div>
                        <div class="definetionRow1">
                            <div class="row">
                                <div class="col-lg-3 col-md-1">
                                    <p>
                                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#wpm" aria-expanded="false" aria-controls="collapseWidthExample" style="border:2px solid #7fb800;">
                                            Word per Minute (WPM) Typing Test?
                                            <br>
                                            <br>
                                        </button>
                                    </p>
                                    <div style="min-height: 120px;">
                                        <div class="collapse collapse-horizontal" id="wpm">
                                            <div class="card card-body" style="width: 300px;">
                                                Words per minute (WPM) is the number of words processed per minute, most commonly used to measure and denote the speed of typing or reading speed.
                                                For measuring typing speed, each word is standardized to be five characters or five keystrokes long, which include white space.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-2">
                                    <p>
                                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#freeType" aria-expanded="false" aria-controls="collapseWidthExample" style="border:2px solid #7fb800;">
                                            Is This Really a Free Typing Test You Can Use?
                                        </button>
                                    </p>
                                    <div style="min-height: 120px;">
                                        <div class="collapse collapse-horizontal" id="freeType">
                                            <div class="card card-body" style="width: 300px;">
                                                As the makers of brisklytype, customer service software for businesses, we wanted to provide the community of our customers with a free typing test.
                                                This way, they can consistently practice typing and improve their typing skills.
                                                We've also made this tool accessible to every visitor of our page. Our tool is a free typing speed test with a WPM score, but it can be also used as a typing speed test for kids.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-2">
                                    <p>
                                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#cpm" aria-expanded="false" aria-controls="collapseWidthExample" style="border:2px solid #7fb800;">
                                            What Is CPM and How Can You Calculate It?
                                        </button>
                                    </p>
                                    <div style="min-height: 120px;">
                                        <div class="collapse collapse-horizontal" id="cpm">
                                            <div class="card card-body" style="width: 300px;">
                                                The CPM stands for the number of characters you type per minute, including all the mistakes.
                                                “Corrected” scores count only correctly typed words. WPM is just the corrected CPM divided by five. 
                                                This is the de facto international standard.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-2">
                                    <p>
                                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#avg" aria-expanded="false" aria-controls="collapseWidthExample" style="border:2px solid #7fb800;">
                                            What Is the Average Typing Speed?
                                            <br>
                                            <br>
                                        </button>
                                    </p>
                                    <div style="min-height: 120px;">
                                        <div class="collapse collapse-horizontal" id="avg">
                                            <div class="card card-body" style="width: 300px;">
                                                The average person types between 38 and 40 words per minute (WPM).
                                                That translates into between 190 and 200 characters per minute (CPM).
                                                However, professional typists type a lot faster, averaging between 65 and 75 WPM.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="definetionRow2">
                            <div class="row">
                                <div class="col-lg-3 col-md-2">
                                    <p>
                                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#nwpm" aria-expanded="false" aria-controls="collapseWidthExample" style="border:2px solid #7fb800;">
                                            What does NWPM mean?
                                            <br>
                                            <br>
                                        </button>
                                    </p>
                                    <div style="min-height: 120px;">
                                        <div class="collapse collapse-horizontal" id="nwpm">
                                            <div class="card card-body" style="width: 300px;">
                                                Alternatively referred to as NWPM, which is short for net words per minute,
                                                NWAM is short for net words a minute. It is the same as the GWAM (gross words a minute), minus any errors.
                                                For example, if you typed 400 words in five minutes; divide 400 into 5 to get 80 GWAM.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-2">
                                    <p>
                                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#gwpm" aria-expanded="false" aria-controls="collapseWidthExample" style="border:2px solid #7fb800;">
                                            What does WPM or GWPM stand for?
                                            <br>
                                            <br>
                                        </button>
                                    </p>
                                    <div style="min-height: 120px;">
                                        <div class="collapse collapse-horizontal" id="gwpm">
                                            <div class="card card-body" style="width: 300px;">
                                                Alternatively referred to as GWPM (gross words per minute), GWAM is short for gross words a minute and is similar to WPM,
                                                except it does not account for any errors. GWAM is often used as a measurement for users who are learning to type and is later replaced by WPM.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-2">
                                    <p>
                                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#fastTechnique" aria-expanded="false" aria-controls="collapseWidthExample" style="border:2px solid #7fb800;">
                                            What is the fastest typing technique?
                                            <br>
                                            <br>
                                        </button>
                                    </p>
                                    <div style="min-height: 120px;">
                                        <div class="collapse collapse-horizontal" id="fastTechnique">
                                            <div class="card card-body" style="width: 300px;">
                                                Touch-typing is also generally faster than hunting and pecking.
                                                This is because keeping your hands still and making use of all eight fingers and thumbs on the space bar is more efficient than moving them around the keyboard in search of individual keys.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-2">
                                    <p>
                                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#importantEveryone" aria-expanded="false" aria-controls="collapseWidthExample" style="border:2px solid #7fb800;">
                                            Why Is Typing Speed Important to Everyone?
                                        </button>
                                    </p>
                                    <div style="min-height: 120px;">
                                        <div class="collapse collapse-horizontal" id="importantEveryone">
                                            <div class="card card-body" style="width: 300px;">
                                                The faster you type, the faster you will be able to communicate with others.
                                                You will be able to save a ton of time on any kind of work that requires typing.
                                                At first, it will be a couple of extra minutes that you won’t really notice.
                                                Over time, the minutes will turn into hours of saved time that you can spend on other activities.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- -----------------------------------------------------------           
                    
                    Footer
                    
         -----------------------------------------------------------           -->

        <%@include file="Webpages/footer.jsp" %>
    </div>
</div>

<!--javascript-->
<script src="javascript/main.js" type="module"></script>  
<!--//jquery-->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
</body>
</html>
