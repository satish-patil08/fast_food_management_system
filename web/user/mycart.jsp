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
        <title>My Cart</title>
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
        }
        .btnbox{
            border:solid 1px;
            border-color: #60b246;
            color: #60b246;
            background-color: #fff;
            margin-left: 25%;
            margin-top:20%;
            margin-bottom: 5%;
          }
          .textbox{
            width: 30%;
          }
        .hover:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
         .sidebar-left  {
          height: 100%;
          width: 0;
          position: fixed;
          z-index: 1;
          top: 0;
          left: 0;
          background-color: #fff;
          overflow-x: hidden;
          transition: 0.5s;
          padding-top: 60px;
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 1200px 0 rgba(0, 0, 0, 19);
        }

        .sidebar-left a {
          padding: 8px 8px 8px 32px;
          text-decoration: none;
          font-size: 25px;
          color: #818181;
          display: block;
          transition: 0.3s;
          margin-top: 1%;
        }

        .sidebar-left a:hover {
          color: #f1f1f1;
        }

        .sidebar-left .closebtn-left {
          position: absolute;
          top: 0;
          right: 25px;
          font-size: 36px;
          margin-left: 50px;
          color: #FFB30E;
        }

        .openbtn {
          font-size: 20px;
          cursor: pointer;
          background-color: #111;
          color: white;
          padding: 10px 15px;
          border: none;
        }

        .openbtn:hover {
          background-color: #444;
        }

        #main {
          transition: margin-left .5s;
          padding: 16px;
        }

        /* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
        @media screen and (max-height: 450px) {
          .sidebar-left {padding-top: 15px;}
          .sidebar-left a {font-size: 18px;}
        }
        
        </style>
    </head>
<body class="bg-primary" style="overflow-x: hidden;">
   <%@include file="top-nav.jsp" %>  
        <% 
            Connection conn=null;
            Statement st=null;
            
            try
             {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fast_food_management_system","root","root");
            st=conn.createStatement();
            String sql="select * from mycart where user_name='"+session.getAttribute("uname")+"'";
            ResultSet rs=st.executeQuery(sql);
          while(rs.next())
         {
         %>
          <form method="post" action="../mycart">  
        <div class="row" id="ma">
            <div class="col-sm-1"></div>
            <div class="col-sm-7 container shadow">
                <input type="hidden" name="name" value="<%=rs.getString("full_name")%>">
                
                <div class="card-body">
                   <h2 class="card-title">Add a delivery address</h2>
                   <label>You seem to be in the new location</label>
                  <input type="hidden" name="mid" value="<%=rs.getString("id")%>">
                   <div class="col-sm-4 hover">
                       <div class="container " style="border:dashed 1px">
                         <i class="fas fa-map-marker-alt text-warning mx-2"></i>
                         <label><b>Add new address</b></label>
                         <input type="hidden" name="name" value="<%=rs.getString("full_name")%>">
                         <input type="hidden" name="house_no" value="<%=rs.getString("flat_no")%>">
                         <input type="hidden" name="area_name" value="<%=rs.getString("area")%>">
                         <input type="hidden" name="landmark_name" value="<%=rs.getString("landmark")%>">
                         <input type="hidden" name="town_name" value="<%=rs.getString("town")%>">
                         <input type="hidden" name="pincode" value="<%=rs.getString("pin")%>">
                         <input type="hidden" name="mobile" value="<%=rs.getString("mobile")%>">
                         <%
                            if(rs.getString("full_name")==null && rs.getString("flat_no")==null && rs.getString("area")==null && rs.getString("landmark")==null && rs.getString("town")==null && rs.getString("pin")==null)
                                                         {%>
                                <p style="font-size: 13px; font-family: monospace;">Click Here to Address</p> 
                                <button  name="ad" value="add" class="btnbox">ADD NEW</button>
                            <%}else{%>
                                <p style="font-size: 13px; font-family: monospace;"><%=rs.getString("full_name")%><br> <%=rs.getString("flat_no")%>, <%=rs.getString("area")%>,<br><%=rs.getString("landmark")%>, <br><%=rs.getString("town")%>, <%=rs.getString("pin")%></p> 
                                <button name="ad" value="add" class="btnbox">UPDATE</button>
                         <%}%>
                       </div>
                   </div><br>
                   <div class="row">
                       <div class="col-sm-7">
                           <button type="submit" name="msg" value="place" class="btn btn-primary  form-control">PROCEED TO PAY</button>
                       </div>
                       <div class="col-sm-5">
                           <button type="submit" name="rmv" value="remove"class="btn btn-danger  form-control">REMOVE FROM CART</button>
                       </div> 
                   </div>
                   
                </div>
              
            </div>
                        <!-- 2nd div -->
                      
         <div class="col-md-3 container shadow">
            <div class="row">
                <div class="col-sm-3">
                    <img src="<%=rs.getString("image")%>" height="70" width="70" > 
                    <input type="hidden" name="image" value="<%=rs.getString("image")%>">
                </div>
                <div class="col-sm-9">
                    <label style="font-size: 17px;"><b><%=rs.getString("rest_name")%></b></label><br>
                    <input type="hidden" name="rest_name" value="<%=rs.getString("rest_name")%>">
                    <label style=" font-size: 13px;"><%=rs.getString("food_name")%></label>
                    <input type="hidden" name="food_name" value="<%=rs.getString("food_name")%>">
                </div>
            </div><hr>
            <div class="row">
                <div class="col-sm-9">
                    <label style="font-family: monospace; font-size: 15px;">Item Total</label>
                </div>
                <div class="col-md-1">
                    <label style="font-family: monospace;  font-size: 15px;">&#8377;&nbsp;<%=rs.getString("prise")%></label>
                    <input type="hidden" name="prise" value="<%=rs.getString("prise")%>">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-7">
                    <label><b>Bill details</b></label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-9">
                    <label style="font-family: monospace; font-size: 15px;">Item Total</label>
                </div>
                <div class="col-md-2">
                    <label style="font-family: monospace; font-size: 15px;">&#8377;&nbsp;<%=rs.getString("prise")%></label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-9">
                    <label style="font-family: monospace; font-size: 15px;">Delivery Fee</label>
                </div>
                <div class="col-md-2">
                    <label style="font-family: monospace; font-size: 15px;">&#8377;&nbsp;<%=rs.getString("delivery_charges")%></label>
                    <input type="hidden" name="delivery_charge" value="<%=rs.getString("delivery_charges")%>">
                </div>
            </div><hr>
            <div class="row">
                <div class="col-sm-9">
                    <label style="font-family: monospace; font-size: 15px;">Total Charges</label>
                </div>
                <div class="col-md-2">
                    <label style="font-family: monospace; font-size: 15px;">&#8377;&nbsp;<%=rs.getString("delivery_charges")%></label>
                </div>
            </div><hr>
            <div class="row">
                <div class="col-sm-9">
                    <h5 style="font-family: monospace;">TO PAY</h5>
                </div>
                <div class="col-md-2"> 
                    <input type="hidden" name="total_paid" value="<%=Integer.parseInt(rs.getString("prise"))+Integer.parseInt(rs.getString("delivery_charges"))%>"
                    <h5  style="font-family: monospace;">&#8377;&nbsp;<%=Integer.parseInt(rs.getString("prise"))+Integer.parseInt(rs.getString("delivery_charges"))%></h5>
                </div>
            </div><br>
        </div>          
    <div class="col-sm-1"></div>
    </div>
    </form><br>    
        <%
      }
            }
  catch(Exception ex)
       {
           out.println(ex.toString());
       }%>  
      <script>
          function openLeft() {
            document.getElementById("mySidebar").style.width = "450px";
            document.getElementById("main").style.marginLeft = "0";
          }

          function closeLeft() {
            document.getElementById("mySidebar").style.width = "0";
            document.getElementById("main").style.marginLeft= "0";
          }
      </script>
  </body>
</html>
