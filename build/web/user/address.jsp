<%-- 
    Document   : mycart
    Created on : 16 Feb, 2022, 8:33:02 PM
    Author     : Administrator
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Address</title>
        <link rel="stylesheet" href="../assets/css/theme.css">
        <link rel="stylesheet" href="../assets/css/collapps.css">
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
        <style type="text/css">
            body{
                background-color: #e9ecee;
            }
         .container
        {
            border-radius: 1px;
            background-color: white;
            margin-top: 1%;
            margin-left: 1%;
            padding-top: 5px;
            border-radius: 10px;
        }
        </style>
    </head>
<body class="bg-primary">
    <br><br>
    <form method="POST" action="../mycart">
               <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="container shadow">
                        <br>
                        <div class="row">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4">
                                <center><h3>Add Address</h3></center>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="hidden" name="mid" value="<%out.println(session.getAttribute("cartid"));%>">
                                <input type="text" name="name" placeholder="Full Name" class="form-control" required="" onkeypress="javascript : return isString(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" name="mobile" placeholder="Mobile Number" required="" maxlength="10" class="form-control" >
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                               <input type="text" name="house_no" placeholder="Flat,House No.,Building,Apartment" required="" class="form-control"  onkeypress="javascript : return isAlphanumric(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" name="area_name"  placeholder="Area,Street,Village" required=""  class="form-control"  onkeypress="javascript : return isString(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" name="landmark_name" placeholder="Landmark" required=""  class="form-control"  onkeypress="javascript : return isString(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" name="town_name"  placeholder="Town/City" required="" class="form-control"  onkeypress="javascript : return isString(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" name="pincode" placeholder="Pin" required=""  class="form-control"  onkeypress="javascript : return isNumber(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-3">
                               <button type="submit" name="upd" value="update"class="btn btn-primary">ADD</button>
                            </div>
                            <div class="col-sm-3">
                               <button type="reset" name="" value="" class="btn btn-primary">CLEAR</button>
                            </div>
                        </div><br>
                    </div>
                </div>
                <div class="col-sm-3"></div>
            </div>
    </form>
  </body>
</html>
