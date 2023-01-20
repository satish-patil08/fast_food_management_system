<%-- 
    Document   : view_report
    Created on : 19 May, 2022, 8:10:12 PM
    Author     : 91777
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
      
          Connection cn = null;
          
          String event=request.getParameter("save");
         // String all=request.getParameter("All Reports");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fast_food_management_system","root","root");
 
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
          
         
            if(event.equals("View Report"))
                      {
                String start=request.getParameter("start");
                String end=request.getParameter("end");
                
            File reportFile = new File(application.getRealPath("admin\\Report\\orders.jasper"));//your report_name.jasper file
            HashMap parameters = new HashMap();
            
            parameters.put("start_date", start);
            parameters.put("end_date", end);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();

                       
                   }
          
          if(event.equals("All Reports"))
             {
                
            File reportFile1 = new File(application.getRealPath("admin\\Report\\all_order_report.jasper"));//your report_name.jasper file
            HashMap parameters = new HashMap();
            
           
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile1.getPath(), null, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
            
                    
                }
         %>
    </body>
</html>
