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
        <title>Home Page</title>
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
        <style>
              .dropdown {
                position: relative;
                display: inline-block;
              }

              .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                font-weight: 600;
                min-width: 135px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
              }

              .dropdown-content a {
                color: #FFB30E;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
              }

              .dropdown-content a:hover {background-color: #f1f1f1}

              .dropdown:hover .dropdown-content {
                display: block;
              }

              .dropdown:hover .dropbtn {
                background-color: #3e8e41;
              }
        </style>
    </head>
    <body>
         <!-------------------------------------------------------------------------->
                                                              
                                <!--LOGIN--> 
        
        <!-------------------------------------------------------------------------->
        <div id="mySidebar" class="sidebar-home-right">
        <a href="javascript:void(0)" class="closebtn-home-right" onclick="closeLeft()">×</a><br>
        <form  method="post" action="../user_login">
            <div class="row">
                <div class="col-sm-5"></div>
                    <div class="col-sm-5">						
                       <h3>Login</h3>
                    </div>	
            </div><br>
                <div class="row">
                  <div class="col-sm-1"></div>
                      <div class="col-sm-10">
                          <input type="text" name="uname" placeholder="User Name" autocomplete="off" class="form-control" >
                      </div>
                </div><br><br>
              <div class="row">
                <div class="col-sm-1"></div>
                    <div class="col-sm-10">
                        <input type="password" name="pass" placeholder="Password" class="form-control" maxlength="8">
                    </div>
              </div>
              <div class="row">
                  <div class="col-sm-8"></div>
              <div class="col-sm-4">
                  <label style="font-size: 14px;"><a href="forget_password.jsp" style=" color: #FFB30E;">Forget Password?</a></label>
              </div>
              </div>
            <div class="row">
              <div class="col-sm-4"></div>
              <div class="col-sm-5">
                  <button type="submit" name="login" value="Login" class="btn btn-primary">Login</button>
              </div>
            </div><hr>
        </form>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-7">
                    <button type="submit" name="login" onclick="openRight()" class="btn btn-primary">Create New Account</button>
                </div>
            </div><br> 
    </div>
        <!-------------------------------------------------------------------------->
                                                              
                                <!--SIGNUP--> 
        
        <!-------------------------------------------------------------------------->
    <div class="sidebar-home-right" id="usersignup" >
         <a href="javascript:void(0)" class="closebtn-home-right" onclick="closeRight()">×</a><br>
         <form method="POST" action="../user_signup">
            <div class="col-sm-12">
                
                    <div class="row">
                        <div class="col-sm-4"></div>
                            <div class="col-sm-5">						
                                <center><h3>Sign Up</h3></center>
                            </div>	
                    </div><br>
                    <div class="row">
                        <div class="col-sm-1"></div>
                            <div class="col-sm-5">
                                <input type="text" name="fname" required="" placeholder="First Name" name="fname" class="form-control"  onkeypress="javascript : return isString(event)">
                            </div>
                        <div class="col-sm-5">
                            <input type="text" name="lname" placeholder="Last Name" required="" class="form-control" onkeypress="javascript : return isString(event)">
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-10">
                            <input  type="email" name="email" required="" onkeypress="javascript : return isEmail(event)" placeholder="Email Id" class="form-control">
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-10">
                            <input type="text"  name="mob" placeholder="Mobile No" required="" maxlength="10" class="form-control" onkeypress="javascript : return isContactno(event)">
                        </div>
                    </div><br>
                    <div class="row">
                    <div class="col-sm-1"></div>
                        <div class="col-sm-5">
                            <input type="text" name="uname" required="" placeholder="User Name"class="form-control" >
                        </div>
                    <div class="col-sm-5">
                        <input type="password" name="pass" required="" placeholder="Password" maxlength="8" class="form-control">
                    </div>
                </div><br>
            <div class="row">
                <div class="col-sm-2"></div>
                    <div class="col-sm-5">
                        <button type="submit" value="signup" name="signup" class="btn btn-primary">Sign up</button>
                    </div>
                    <div class="col-sm-5">
                        <button type="reset" value="" name="" class="btn btn-primary">Clear</button>
                    </div>
            </div><br>
       </div>
     </form>
    </div> 
        
        <!-------------------------------------------------------------------------->
                                                              
                                <!--MAIN BODY--> 
        
        <!-------------------------------------------------------------------------->
        
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top"id="main" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand d-inline-flex"><img class="d-inline-block" src="../assets/img/gallery/logo.svg" alt="logo" /><span class="text-1000 fs-3 fw-bold ms-2 text-gradient">BhukkadLog</span></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"> </span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 my-2 mt-lg-0" id="navbarSupportedContent">
            <div class="mx-auto pt-5 pt-lg-0 d-block d-lg-none d-xl-block">
              <p class="mb-0 fw-bold text-lg-center">Deliver to: <i class="fas fa-map-marker-alt text-warning mx-2"></i><span class="fw-normal">Current Location </span><span>Near Bus Stand,Mungurwadi</span></p>
            </div>
              <form method="POST">
              <div class="input-group-icon pe-2"><i class="fas fa-search input-box-icon text-primary"></i>
                <input class="form-control border-0 input-box bg-100" type="search" name="searchfood" placeholder="Search Food" aria-label="Search">
                <button hidden="hidden" type="submit" class="form-control" name="search" value=""></button>
              </div>
              </form>
              <div class="dropdown">
              <%
            if(session.getAttribute("uname")==null)
            {%>
                <button class="btn btn-white shadow-warning text-warning" onclick="openLeft()" type="submit"> <i class="fas fa-user me-2"></i>Login</button>
                <%}else{%>
                <button class="btn btn-white shadow-warning text-warning" type="submit"> <i class="fas fa-user me-2"></i><%out.println(session.getAttribute("uname"));%></button>
                
                <div class="dropdown-content">
                   <a href="profile.jsp">Profile</a>
                    <a href="myorder.jsp">My Orders</a>
                    <a href="mycart.jsp">My Cart</a>
                    <a href="logout.jsp">Log Out</a> 
                </div>
          </div>
         <%}%>
          </div>
        </div>
      </nav>
      <section class="py-7 overflow-hidden bg-primary" id="home main">
        <div class="container">
          <div class="row flex-center">
            <div class="col-md-5 col-lg-6 order-0 order-md-1 mt-8 mt-md-0"><a class="img-landing-banner"><img class="img-fluid" src="../assets/img/gallery/hero-header.png"></a></div>
            <div class="col-md-7 col-lg-6 py-8 text-md-start text-center">
              <h1 class="display-1 fs-md-5 fs-lg-6 fs-xl-8 text-light">Are you starving?</h1>
              <h1 class="text-800 mb-5 fs-4">Within a few clicks, find meals that <br class="d-none d-xxl-block">are accessible near you</h1>
              <div class="card w-xxl-75">
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <h5>Enter Your Location Here</h5>
                        </div>
                    </div>
                  <div class="tab-content mt-3" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                        <form class="row gx-2 gy-2 align-items-center" action="../area_code" method="POST">
                        <div class="col">
                          <div class="input-group-icon"><i class="fas fa-map-marker-alt text-danger input-box-icon"></i>
                            <label class="visually-hidden" for="inputDelivery">Address</label>
                            <input class="form-control input-box form-foodwagon-control" id="inputDelivery" name="location" type="search" placeholder="Enter Your Pin " autocomplete="off" maxlength="6" onkeypress="javascript : return isNumber(event)">
                          </div>
                        </div>
                        <div class="d-grid gap-3 col-sm-auto">
                            <button class="btn btn-danger" type="submit" name="save" value="search">Search</button>
                        </div>
                      </form>
                    </div>
                    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                      <form class="row gx-4 gy-2 align-items-center">
                        <div class="d-grid gap-3 col-sm-auto">
                          <button class="btn btn-danger" type="submit">Find Food</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
        <script>
          function openLeft() {
            document.getElementById("mySidebar").style.width = "450px";
            document.getElementById("main").style.marginLeft = "0";
          }

          function closeLeft() {
            document.getElementById("mySidebar").style.width = "0";
            document.getElementById("main").style.marginLeft= "0";
          }
          function openRight() {
            document.getElementById("usersignup").style.width = "500px";
            document.getElementById("main").style.marginLeft = "0";
          }

          function closeRight() {
            document.getElementById("usersignup").style.width = "0";
            document.getElementById("main").style.marginLeft= "0";
          }
      </script>
    </body>
</html>
