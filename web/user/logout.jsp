<%-- 
    Document   : logout
    Created on : 3 May, 2022, 10:56:59 AM
    Author     : 91777
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            session.invalidate(); 
            response.sendRedirect("home_page.jsp");
        %>
    </body>
</html>