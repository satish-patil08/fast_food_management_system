<%-- 
    Document   : restaurant_list
    Created on : 13 Apr, 2022, 8:04:33 PM
    Author     : 91777
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="dashboard" id="complaint">
        <div id="content">
          <div class="container shadow box"style="background-color:#fff; margin-top: 5%; margin-top: 5%;height: 600px;overflow: scroll;">
              <h3 class="text-primary">Restaurant List</h3>
              <div class="row">
                    <div class="col-sm-11">
                      <table class="table">
                          <thead class="text-primary">
                          <tr>
                            <th>
                              Sr.No.  
                            </th>
                            <th>
                              Restaurant Name
                            </th>
                            <th class="text-center">
                              Owner Name
                            </th>
                            <th class="text-center">Mobile no</th>
                            <th class="text-center">
                              Address
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
                           String sql="select * from add_rest";
                           ResultSet rs=st.executeQuery(sql);
                         while(rs.next())
                        {
                        %>
                            <tr>
                                <td><%=i++%></td>
                                <td><%=rs.getString("rest_name")%></td>
                                <td class="text-center"><%=rs.getString("owner_name")%></td>
                                <td class="text-center"><%=rs.getString("mobile")%></td>
                                <td><%=rs.getString("address")%><td>
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
