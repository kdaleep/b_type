<%@page import="com.briskly.type.entities.message" %>
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
        <%@include file="Webpages/navbar.jsp" %> 
        <!-- -----------------------------------------------------------           
                          
                          Login and Signup forms
                          
               -----------------------------------------------------------           -->
        <div class="container">
            <div class="formsArea">
                <div class="row justify-content-evenly">
                    <div class="col-4">
                        <div class="signInForm" id="signInForm">
                            <div class="card pb-4" style="width: 18rem;">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item" id="signInHeader"><h3 id="signin">Sign in</h3></li>                                   
                                    <!--//form tag-->  
                                    <%
                                   message m= (message) session.getAttribute("msg");
                                   if(m != null)
                                   {
                                    %>
                                    <div class="alert <%=m.getCssClass() %> bg-white border-0" role="alert">
                                        <%= m.getContent() %>
                                    </div>
                                    <%
                                        session.removeAttribute("msg");
                                    }
                                    
                                    %>
                                    <form action="signIn" method="post">
                                        <div class="mb-3">
                                            <input type="email" class="form-control" required="on" id="email" name="Lemail"aria-describedby="emailHelp" placeholder="Email">
                                        </div>
                                        <div class="mb-3">
                                            <input type="password" class="form-control" id="password" required="on" name="Lpassword" placeholder="Password">
                                        </div>
                                        <div class="d-flex justify-content-center">                                   
                                            <table cellpadding="10px">
                                                <tr>
                                                    <td><button type="submit" class="btn btn-primary">Continue</button></td>
                                                </tr>
                                                <tr>
                                                    <td>Don't have account?<b><a href="login-signup.jsp" style="text-decoration:none;color:#78b800;"> SignUp here</a></b></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </form>
                                   
                                </ul>             
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="signUpForm">
                            <div class="card pb-4" style="width: 18rem;">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item" id="signUpHeader"><h3 id="signin">Sign up</h3></li>
                                    <li class="list-group-item">   

                                        <!--//form tag-->

                                        <form action="signUp" method="post" id="sign-Up">
                                            <div class="mb-3">
                                                <input type="text" class="form-control" required="on" id="UserName" name="userName" aria-describedby="userName" placeholder="Username">
                                            </div>
                                            <div class="mb-3">
                                                <input type="email" class="form-control" required="on" id="Eemail" name="email"aria-describedby="emailHelp" placeholder="Email">
                                            </div>
                                            <div class="mb-3">
                                                <input type="password" class="form-control" id="Password" required="on" name="password" placeholder="Password">
                                            </div>
                                            <div class="mb-3">
                                                <input type="password" class="form-control" id="vpassword" required="on" name="verifyPassword" placeholder="Verify password">
                                            </div>
                                            <div class="loadingSpinner" id="loading-Spinner" style="display:none;">
                                                <div class="d-flex justify-content-center" >
                                                    <div class="spinner-border mb-2" role="status" id="loading-Class" style="color:#f6511d;">                                               
                                                    </div>   
                                                    <span>&nbsp;&nbsp;Please wait...</span>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-center"><button type="submit" class="btn btn-primary" id="signUp-Btn">Register</button></div>
                                        </form>
                                    </li>
                                </ul>            
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

        <!--javascript-->
        <script src="javascript/main.js" type="module"></script>  
        <!--//jquery-->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

        <script>
            $(document).ready(function () {
                console.log("Document loaded");
                $('#sign-Up').on('submit', function (event)
                {
                    event.preventDefault();
                    var form = new FormData(this);

                    $("#signUp-Btn").hide();
                    $("#loading-Spinner").show();

                    //send signUp servlet:
                    $.ajax({
                        url: 'signUp',
                        type: 'post',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            if (data.trim() === 'Done')
                            {
                                swal("Registered succesfully");
                                $("#signUp-Btn").show();
                                $("#loading-Spinner").hide();
                            }
                            else
                            {
                                swal("Error !! user already exists with same email.");
                                $("#signUp-Btn").show();
                                $("#loading-Spinner").hide();
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown)
                        {
                            $("#signUp-Btn").show();
                            $("#loading-Spinner").hide();
                            console.log(jqXHR);
                            swal("error");

                        },
                        processData: false,
                        contentType: false
                    });

                });
            });
        </script>
    </body>
</html>
