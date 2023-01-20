<%-- 
    Document   : top-nav
    Created on : 19 Mar, 2022, 9:55:32 AM
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../assets/css/top-nav.css">
<div style="background-color: #fff;">
<nav>
    <ul class="ul">
      <li class="li"><a class="navbar-brand d-inline-flex" href="index.html"><img class="d-inline-block" src="../assets/img/gallery/logo.svg" alt="logo" /><span class="text-1000 fs-3 fw-bold ms-2 text-gradient">BhukkadLog</span></a></li>
    </ul>
    <ul class="ul">
        <li><input type="search" name="search" value="srch" placeholder="Search" class="form-control"></li>
      
      <li class="li nav-link"><a href="home_page.jsp">Home</a></li>
      <li class="li nav-link"><a href="view_food.jsp">View Food</a></li>
       <li class="li nav-link"><a href="feedback.jsp" >Feedback</a></li>
       <li class="li nav-link"><a href="myorder.jsp">Order</a></li>
       
      
      <div class="dropdown">
      <li class="nav-item nav-link li"><a  href="#"><i class="fas fa-user me-2"></i>Login</a></li>
      <div class="dropdown-content">
        <a href="profile.jsp">Profile</a>
        <a href="mycart.jsp">My Cart</a>
        <a href="complaint.jsp">Complaint</a>
        <a href="">Log Out</a>
      </div>
    </div>
    </ul>
  </nav>
</div>