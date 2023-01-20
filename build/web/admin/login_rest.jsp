<%-- 
    Document   : home_page
    Created on : 14 Feb, 2022, 11:18:57 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="msapplication-TileImage" content="../assets/img/favicons/mstile-150x150.png">
        <title>Restaurant Login</title>
        <link rel="stylesheet" href="../assets/css/theme.css">
        <link rel="stylesheet" href="../assets/css/collaps.css">
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
        
    </head>
    <body>
       
        <!-------------------------------------------------------------------------->
                                                              
                                <!--MAIN BODY--> 
        
        <!-------------------------------------------------------------------------->
      <section class="py-7 overflow-hidden bg-primary" id="home ">
        <div class="container">
          <div class="row flex-center">
            
            <div class="col-md-7 col-lg-6 py-8 text-md-start text-center">
              <h1 class="display-1 fs-md-5 fs-lg-6 fs-xl-8 text-light">Restaurant Login</h1>
              
              <div class="card w-xxl-75">
                <div class="card-body">
                  <div class="tab-content mt-3" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                       <form class="row gx-2 gy-2 align-items-center" method="POST" action="../login_rest">
                        <div class="col-sm-12">
                           <input type="text" class="form-control" placeholder="Restaurant Name" name="restname">
                        </div>
                         <div class="col-sm-12">
                            <input type="password" class="form-control" placeholder="Password" name="pass" maxlength="8">
                         </div>
                            <div class="col-sm-3">
                               <button type="submit" class="btn btn-primary" name="save" value="login">Login</button>
                            </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div
            </div>
          </div>
        </div>
      </section>
    </body>
</html>
