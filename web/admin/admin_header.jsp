<%-- 
    Document   : admin_header
    Created on : 10 Mar, 2022, 12:58:21 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="utf-8">
        <meta name="msapplication-TileImage" content="../assets/img/favicons/mstile-150x150.png">
        <title>Dashboard</title>
        <link rel="stylesheet" href="../assets/css/theme.css">
        <link rel="stylesheet" href="../assets/css/collaps.css">
<!--    <link rel="stylesheet" href="../assets/css/navbar.css">-->
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
        /*
    DEMO STYLE
*/
@import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";

p {
    font-family: 'Poppins', sans-serif;
    font-size: 1.1em;
    font-weight: 300;
    line-height: 1.7em;
    color: #999;
}

a, a:hover, a:focus {
    color: inherit;
    text-decoration: none;
    transition: all 0.3s;
}

.navbar {
    padding: 15px 10px;
    background: #fff;
    border: none;
    border-radius: 0;
    margin-bottom: 40px;
    box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
}

.navbar-btn {
    box-shadow: none;
    outline: none !important;
    border: none;
}

.line {
    width: 100%;
    height: 1px;
    border-bottom: 1px dashed #ddd;
    margin: 40px 0;
}

/* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */

.wrapper {
    display: flex;
    width: 100%;
    align-items: stretch;
    
}


#sidebar {
    min-width: 250px;
    max-width: 250px;
    background: #fff;
    color: #FFB30E;
    transition: all 0.6s cubic-bezier(0.945, 0.020, 0.270, 0.665);
    transform-origin: bottom left;
    margin-left: 10px;
    border-radius:  15px 15px;
    margin-top: 10px;
    margin-bottom:10px
    
}

#sidebar.active {
    margin-left: -250px;
    transform: rotateY(100deg);
}

#sidebar .sidebar-header {
    padding: 20px;
    
}

#sidebar ul.components {
    padding: 20px 0;
    border-bottom: 1px solid #47748b;
}

#sidebar ul p {
    color: #fff;
    padding: 10px;
}

#sidebar ul li a {
    padding: 10px;
    font-size: 1.1em;
    display: block;
}
#sidebar ul li a:hover {
    color: #7386D5;
    background: #fff;
}

#sidebar ul li.active > a, a[aria-expanded="true"] {
    color: #fff;
    background: #6d7fcc;
}


a[data-toggle="collapse"] {
    position: relative;
}

.dropdown-toggle::after {
    display: block;
    position: absolute;
    top: 50%;
    right: 20px;
    transform: translateY(-50%);
}

ul ul a {
    font-size: 0.9em !important;
    padding-left: 30px !important;
    background: #6d7fcc;
}

ul.CTAs {
    padding: 20px;
}

ul.CTAs a {
    text-align: center;
    font-size: 0.9em !important;
    display: block;
    border-radius: 5px;
    margin-bottom: 5px;
}

a.download {
    background: #fff;
    color: #7386D5;
}

a.article, a.article:hover {
    background: #6d7fcc !important;
    color: #fff !important;
}



/* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */
#content {
    width: 100%;
    padding: 20px;
    min-height: 100vh;
    transition: all 0.3s;
}

#sidebarCollapse {
    width: 40px;
    height: 40px;
    background: #f5f5f5;
    cursor: pointer;
}

#sidebarCollapse span {
    width: 80%;
    height: 2px;
    margin: 0 auto;
    display: block;
    background: #555;
    transition: all 0.8s cubic-bezier(0.810, -0.330, 0.345, 1.375);
    transition-delay: 0.2s;
}

#sidebarCollapse span:first-of-type {
    transform: rotate(45deg) translate(2px, 2px);
}
#sidebarCollapse span:nth-of-type(2) {
    opacity: 0;
}
#sidebarCollapse span:last-of-type {
    transform: rotate(-45deg) translate(1px, -1px);
}


#sidebarCollapse.active span {
    transform: none;
    opacity: 1;
    margin: 5px auto;
}


/* ---------------------------------------------------
    MEDIAQUERIES
----------------------------------------------------- */
@media (max-width: 768px) {
    #sidebar {
        
        margin-left: -250px;
        transform: rotateY(90deg);
    }
    #sidebar.active {
        margin-left: 0;
        transform: none;
    }
    #sidebarCollapse span:first-of-type,
    #sidebarCollapse span:nth-of-type(2),
    #sidebarCollapse span:last-of-type {
        transform: none;
        opacity: 1;
        margin: 5px auto;
    }
    #sidebarCollapse.active span {
        margin: 0 auto;
    }
    #sidebarCollapse.active span:first-of-type {
        transform: rotate(45deg) translate(2px, 2px);
    }
    #sidebarCollapse.active span:nth-of-type(2) {
        opacity: 0;
    }
    #sidebarCollapse.active span:last-of-type {
        transform: rotate(-45deg) translate(1px, -1px);
    }

}

        .box{
          border-radius: 15px;
        }
        body{
            background-color: #e9ecee;
        }
        .dashboard  {
       
        width: 80%;
        position: fixed;
        margin-bottom: 80px;
        margin-left: 276px;
       }
</style>
    </head>
    <body>
      
        <div class="wrapper" id="main">
          <!-- Sidebar Holder -->
          <nav id="sidebar" style="height: 692px;">
              <div class="sidebar-header">
                  <a class="navbar-brand d-inline-flex" href=""><img class="d-inline-block" src="../assets/img/gallery/logo.svg" alt="logo" /><span class="text-1000 fs-3 fw-bold ms-2 text-gradient">BhukkadLog</span></a>
              </div>

              <ul class="list-unstyled ">
                 
                  <li>
                      <a href="dashboard.jsp">Dashboard</a>
                  </li>
                  <li>
                      <a href="user_list.jsp">Registered User</a>
                  </li>
                  <li>
                      <a href="restaurant_list.jsp">Restaurant List</a>
                  </li>
                  <li>
                      <a href="feedback_list.jsp">Feedback List</a>
                  </li>
                  <li>
                      <a href="complaint_list.jsp">Complaint List</a>
                  </li>
                  <li>
                     <a href="food_list.jsp">Food List</a>
                  </li>
                  <li>
                      <a href="add_food.jsp">Add Food</a>
                  </li>
                  <li>
                      <a href="add_rest.jsp">Add Restaurant</a>
                  </li>
                  <li>
                      <a href="report.jsp">Reports</a>
                  </li>
                  <li>
                      <a href="area_code.jsp">Area Code</a>
                  </li>
                   <li>
                       <a href="delivery_panel.jsp">Delivery Panel</a>
                  </li>
              </ul>
          </nav>
        </div>