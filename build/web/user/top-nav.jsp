<%-- 
    Document   : top-nav
    Created on : 19 Mar, 2022, 9:55:32 AM
    Author     : Administrator
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../assets/css/top-nav.css">
<div style="background-color: #fff;">

    <nav>
    <ul class="ul">
      <li class="li"><a class="navbar-brand d-inline-flex" href=""><img class="d-inline-block" src="../assets/img/gallery/logo.svg" alt="logo" /><span class="text-1000 fs-3 fw-bold ms-2 text-gradient">BhukkadLog</span></a></li>
    </ul>
    <ul class="ul">
      <li class="li nav-link"><a href="home_page.jsp">Home</a></li>
      <li class="li nav-link"><a href="view_food.jsp">View Food</a></li>
       <li class="li nav-link"><a href="feedback.jsp" >Feedback</a></li>
       <li class="li nav-link"><a href="mycart.jsp">My Cart</a></li>

      <div class="dropdown">
          <% 
            Connection connection=null;
            Statement statement=null;
            
            try
             {
            Class.forName("com.mysql.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/fast_food_management_system","root","root");
            statement=connection.createStatement();
            String sql2="select * from user_signup where uname='"+session.getAttribute("uname")+"'";
            ResultSet rs=statement.executeQuery(sql2);
            while(rs.next())
         {
         %>
          <%
           if(session.getAttribute("uname")==null)
            {%>
            <li class="nav-item nav-link li"><a  href="#"><i class="fas fa-user me-2"></i>Login</a></li>
            <%}else{%>
            <li class="nav-item nav-link li"><a  href="#"><i class="fas fa-user me-2"></i><%=rs.getString("fname")%>&nbsp;<%=rs.getString("lname")%></a></li>
      <%}%>
      <%
      }
            }
  catch(Exception ex)
       {
           out.println(ex.toString());
       }%>
      <div class="dropdown-content">
        <a href="profile.jsp">Profile</a>
        
        <a href="myorder.jsp">My Orders</a>
        <a href="complaint.jsp">Complaint</a>
        <a href="logout.jsp">Log Out</a>
<!--        <form method="POST" action="../logout">
        <a><button type="submit" name="log" value="out" style="background: transparent; border: none; color: #FFB30E; font-size: 16px;font-weight: 600;">Log Out</button></a>
        </form>-->
      </div>
    </div>
    </ul >
  </nav>
</div>
