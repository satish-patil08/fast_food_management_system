<%-- 
    Document   : feedback
    Created on : 13 Feb, 2022, 6:56:50 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <title>View Food</title>
    <link rel="stylesheet" href="../assets/css/theme.css">
    <script src="../assets/js/validation.js"></script>
    <link rel="apple-touch-icon" sizes="180x180" href="../assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicons/favicon.ico">
    <link rel="manifest" href="../assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="../assets/img/favicons/mstile-150x150.png">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&amp;display=swap" rel="stylesheet">
    
    <script src="../assets/vendors/@popperjs/popper.min.js"></script>
    <script src="../assets/vendors/bootstrap/bootstrap.min.js"></script>
    <script src="../assets/vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="../assets/vendors/fontawesome/all.min.js"></script>
    <script src="../assets/js/theme.js"></script>
         <style>
           
       .container
		{
                    border-radius: 10px;
                    background-color: #fff;
                    margin-top: 10px;
		}
        </style>
    </head>
    <body class="bg-primary" style="overflow-x: hidden;">
       <%@include file="top-nav.jsp" %>
        <form method="POST" action="../feedback">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="container shadow">
                        <br>
                        <div class="row">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4">
                                <center><h3>Feedback</h3></center>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5">
                                <input type="text" name="fname" placeholder="Firsts Name" class="form-control">
                            </div>
                            <div class="col-sm-5">
                                <input type="text" name="lname" placeholder="Last Name" class="form-control">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                               <input type="text" placeholder="Mobile No" name="mob" class="form-control" maxlength="10" onkeypress="javascript : return isContactno(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="email" name="email" placeholder="Email Id" class="form-control">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="msg" placeholder="Write your feedback here...."></textarea>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-3">
                               <button type="submit" name="save" value="send" class="btn btn-primary">SEND</button>
                            </div>
                            <div class="col-sm-3">
                               <button type="reset" value="" class="btn btn-primary">CLEAR</button>
                            </div>
                        </div><br>
                    </div>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </form>
    </body>
</html>