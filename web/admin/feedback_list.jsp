<%-- 
    Document   : user_list
    Created on : 10 Mar, 2022, 12:39:06 PM
    Author     : Administrator
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <div class="dashboard" id="feedback">
        <div id="content">
          <div class="container shadow box"style="background-color:#fff; margin-top: 5%;margin-top: 5%;height: 600px;overflow: scroll;">
              <h3 class="text-primary">Feedback List</h3>
              <div class="row">
                    <div class="col-sm-11">
                      <table class="table">
                          <thead class="text-primary">
                          <tr>
                            <th>
                              Sr.No.  
                            </th>
                            <th>
                              Customer NAME
                            </th>
                            <th>
                              Mobile No
                            </th>
                            <th>Email Id</th>
                            <th class="text-center">
                              Feedback
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                            <% 
                           Connection conn=null;
                           Statement st=null;
                           int i=1;
                           try
                                                                                                                     {
                           Class.forName("com.mysql.jdbc.Driver");
                           conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fast_food_management_system","root","root");
                           st=conn.createStatement();
                           String sql="select * from feedback";
                           ResultSet rs=st.executeQuery(sql);
                         while(rs.next())
                        {
                        %>
                            <tr>
                                <td><%=i++%></td>
                                <td><%=rs.getString("fname")%> <%=rs.getString("lname")%></td>
                                <td><%=rs.getString("mobile")%></td>
                                <td><%=rs.getString("email_id")%></td>
                                <td class="text-center"><%=rs.getString("feedback")%></td>  
                              </tr>     
                                <% 
                         }        
                     }
                  catch(Exception ex)
                  {
                      out.println(ex.toString());
                  }%> 
                        </tbody>
                      </table>
                    </div>
                  </div>
              </div>
          </div>
        </div>
        
         <%@include file="admin_header.jsp" %>
    </body>
</html>
