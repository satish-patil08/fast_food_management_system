<%-- 
    Document   : forget_password
    Created on : 8 May, 2022, 11:21:33 PM
    Author     : 91777
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            margin-top: 10%;
            margin-left: 25%;
            padding-top: 5px;
            border-radius: 10px;
            
        }
        </style>
    </head>
    <body class="bg-primary">
        <form  method="post" action="../user_login">
            
            <div class="col-sm-6 container">
            <div class="row">
                <div class="col-sm-4"></div>
                    <div class="col-sm-5">						
                       <h3>Change Password</h3>
                    </div>	
            </div><br>
                <div class="row">
                  <div class="col-sm-1"></div>
                      <div class="col-sm-10">
                          <input type="text" name="user_name" required="" placeholder="User Name" autocomplete="off" class="form-control"  onkeypress="javascript : return isAlphanumric(event)">
                      </div>
                </div><br><br>
              <div class="row">
                <div class="col-sm-1"></div>
                    <div class="col-sm-10">
                        <input type="password" required="" name="password" placeholder="Enter New Password" class="form-control" maxlength="8">
                    </div>
              </div>
                <br>
            <div class="row">
              <div class="col-sm-5"></div>
              <div class="col-sm-5">
                  <button type="submit" name="change" value="change_pass" class="btn btn-primary">Change</button>
              </div>
            </div><hr>
            </div>
        </form>
    </body>
</html>
