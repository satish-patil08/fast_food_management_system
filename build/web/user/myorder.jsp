<%-- 
    Document   : myorder
    Created on : 20 Feb, 2022, 4:19:54 PM
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
        <title>My Order</title>
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
           
            .container{
                background-color: #fff;
            }
            .btnbox{
            border:solid 1px;
            border-color: #fff;
            color: #fff;
            background-color: transparent;
            width: 20%;
          }
          .help{
              border:solid 1px;
              border-color: #FFB30E;
              background-color: transparent;
              color: #FFB30E;
              width: 10%;
              margin-left: 30px;
          }

          .padding-margin{
            margin-top: 1%;
            margin-left: 10%;
          }
        </style>
    </head>
    <body class="bg-primary">
    <%@include file="top-nav.jsp"%>
    
     <div class="container" style="margin-top: 1%;">
          <div class="card-body" >
            <div style="">
              <h3>MY Orders</h3>
              <input type="hidden" name="usr" value="<%out.println(session.getAttribute("uname"));%>">
            </div>
    <!--                             order details box -->
             <% 
            Connection conn=null;
            Statement st=null;
            
            try
             {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fast_food_management_system","root","root");
            st=conn.createStatement();
            String sql="select * from myorder where user_name='"+session.getAttribute("uname")+"' && status='IN'";
            ResultSet rs=st.executeQuery(sql);
          while(rs.next())
         {
         %> 
         <form method="POST" action="../myorder">
            <div style="border: 1px solid #d4d5d9;">
                <div class="row">
                    <div class="col-sm-2">
                        <input type="hidden" name="mid" value="<%=rs.getString("id")%>" >
                        <img src="<%=rs.getString("image")%>" class="padding-margin" height="140px" width="100%" >
                        <input type="hidden" name="image" value="<%=rs.getString("image")%>">
                        
                    </div>
                    <div class="col-sm-7">
                        <label style="font-size: 17px;"><b><%=rs.getString("rest_name")%></b></label><br>
                        <input type="hidden" name="rest_name" value="<%=rs.getString("rest_name")%>">
                        <label style="font-size: 13px;"><%=rs.getString("food_name")%></label><br>
                        <input type="hidden" name="food_name" value="<%=rs.getString("food_name")%>">
                        <label style="font-size:13px;">ORDER#<%=rs.getString("id")%> | <%=rs.getString("order_date")%></label><br>
                        <input type="hidden" name="date" value="<%= new java.util.Date()%>">
                    </div>
                    <div class="col-sm-3">
                        <lable><b>SHIP TO</b></lable><br>
                        <p style="font-size: 15px;"><%=rs.getString("full_name")%><br> <%=rs.getString("flat_no")%>, <%=rs.getString("area")%>,<br><%=rs.getString("landmark")%>, <br><%=rs.getString("town")%>, <%=rs.getString("pin")%></p> 
                    </div>
                </div><hr>
                <div class="row">
                    <div class="col-sm-9"></div>
                    <div class="col-sm-3">
                        <label style=" font-size: 15px;">Item Total:&nbsp;&nbsp;&#8377;<%=rs.getString("prise")%></label><br>
                        <label style=" font-size: 15px;">Delivery Fee:&nbsp;&nbsp;&#8377;<%=rs.getString("delivery_charges")%></label>
                        <label style=" font-size: 15px;">Taxes and Charges:&nbsp;&nbsp;&#8377;20</label>
                        <input type="hidden" name="total_paid" value="<%=Integer.parseInt(rs.getString("prise"))+Integer.parseInt(rs.getString("delivery_charges"))%>">
                        <label style=" font-size: 15px;">Total Paid:&nbsp;&nbsp;&#8377;<%=rs.getString("total_paid")%></label>
                    </div>
                    
                </div>
                  <div class="row">
                      <div class="col-sm-1"></div>
                      <button type="submit" name="cancle" value="cncl" class="btn btn-danger col-sm-2">CANCEL ORDER</button>
                  </div><br>
              </div><br>
         </form>
               <%
                   }
                    }
            catch(Exception ex)
             {
                out.println(ex.toString());
        }%> 
          </div>
        </div>
    </body>
</html>
