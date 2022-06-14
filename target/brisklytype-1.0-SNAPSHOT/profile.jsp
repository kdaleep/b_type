<%@page import="com.briskly.type.entities.user" %>
<%@page errorPage="error.jsp"%>
<% 
    user u=(user)session.getAttribute("currentUser");
    if(u == null)
    {
        response.sendRedirect("login-signup.jsp");
      }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>   
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>brisklytype</title>

        <!--custom css-->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    </head>
    <body>
        <!-- -----------------------------------------------------------           
            
            navbar 
            
 -----------------------------------------------------------           -->
        <!--navbar-->
        <nav class="navbar navbar-expand-lg bg-light fixed-top">
            <div class="container-fluid">    
                <a class="navbar-brand" href="#" id="siteName"><img src="images/logo.png" width="60px" height="60px"alt="image not found"/></a>    
                <a class="navbar-brand mx-auto" href="#" id="siteName">Welcome , <%= u.getUsername() %></a>  
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav  ms-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Course</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="learn.jsp">Learn</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logoutServlet">Logout</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="aboutUs.jsp" style="color:#ffb400;">i</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>  




        <div class="container text-center">
            <div class="profile">
                <div class="course">
                    <div class="d-flex justify-content-center">
                        <h1 style="color:#78b800;"><b>Course</b></h1>
                        
                    </div>
                    <div class="row">
                        <div class="col-3">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5 class="card-title">Lesson-1</h5>
                                    <p class="card-text">The Home Row</p>
                                    <div class="btn btn-primary" id="cStart" onclick=" msg();">Start</div>
                                </div>
                            </div>
                        </div>  
                        <div class="col-3">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5 class="card-title">Lesson-2</h5>
                                    <p class="card-text">Keys E and I</p>
                                    <div class="btn btn-primary " id="cStart" onclick=" msg();">Start</div>
                                </div>
                            </div>
                        </div>  
                        <div class="col-3">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5 class="card-title">Lesson-3</h5>
                                    <p class="card-text">Keys R and U</p>
                                    <div class="btn btn-primary" id="cStart" onclick=" msg();">Start</div>
                                </div>
                            </div>
                        </div>  
                        <div class="col-3">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5 class="card-title">Lesson-4</h5>
                                    <p class="card-text">Keys T and O</p>
                                    <div class="btn btn-primary" id="cStart" onclick=" msg();">Start</div>
                                </div>
                            </div>
                        </div>  
                          
                    </div>
                    <div class="row">
                        <div class="col-3">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5 class="card-title">Lesson-5</h5>
                                    <p class="card-text">Capital letters and period</p>
                                    <div class="btn btn-primary" id="cStart" onclick=" msg();">Start</div>
                                </div>
                            </div>
                        </div>  
                        <div class="col-3">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5 class="card-title">Lesson-6</h5>
                                    <p class="card-text">Keys C and Comma</p>
                                    <div class="btn btn-primary" id="cStart" onclick=" msg();">Start</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5 class="card-title">Lesson-7</h5>
                                    <p class="card-text">Keys G,H and apostrophe</p>
                                    <div class="btn btn-primary" id="cStart" onclick=" msg();">Start</div>
                                </div>
                            </div>
                        </div>   
                            <div class="col-3">
                                <div class="card" style="width: 18rem;">
                                    <div class="card-body">
                                        <h5 class="card-title">Lesson-8</h5>
                                        <p class="card-text">Keys V,N and question mark</p>
                                        <div class="btn btn-primary" id="cStart" onclick=" msg();">Start</div>
                                    </div>
                                </div>
                            </div>  
                    </div>
                    <div class="row">       
                            <div class="col-3">
                                <div class="card" style="width: 18rem;">
                                    <div class="card-body">
                                        <h5 class="card-title">Lesson-9</h5>
                                        <p class="card-text">Keys W and M</p>
                                        <div class="btn btn-primary" id="cStart" onclick=" msg();">Start</div>
                                    </div>
                                </div>
                            </div>  
                            <div class="col-3">
                                <div class="card" style="width: 18rem;">
                                    <div class="card-body">
                                        <h5 class="card-title">Lesson-10</h5>
                                        <p class="card-text">Keys Q and P</p>
                                        <div class="btn btn-primary" id="cStart" onclick=" msg();">Start</div>
                                    </div>
                                </div>
                            </div>  
                            <div class="col-3">
                                <div class="card" style="width: 18rem;">
                                    <div class="card-body">
                                        <h5 class="card-title">Lesson-11</h5>
                                        <p class="card-text">Keys B and Y</p>
                                        <div class="btn btn-primary" id="cStart" onclick=" msg();">Start</div>
                                    </div>
                                </div>
                            </div>  
                            <div class="col-3">
                                <div class="card" style="width: 18rem;">
                                    <div class="card-body">
                                        <h5 class="card-title">Lesson-12</h5>
                                        <p class="card-text">Keys Z and X</p>
                                        <div class="btn btn-primary" id="cStart" onclick=" msg();">Start</div>
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

            <%@include file="/Webpages/footer.jsp" %>
            <script src="javascript/main.js" type="module"></script>  
            <!--//jquery-->
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
           <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
            <script>
                function msg()
                {
                    alert("Not available right now");
                }
            </script>
    </body>
</html>
