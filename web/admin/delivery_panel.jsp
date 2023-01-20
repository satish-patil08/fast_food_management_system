<%-- 
    Document   : delivery_panel
    Created on : 21 Apr, 2022, 10:00:09 PM
    Author     : 91777
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="dashboard" id="addfood">
         <div id="content">
          <div class="container shadow box"style="background-color:#fff; margin-top: 5%;">
              <h3 class="text-primary">Delivery Panel</h3>
              <div class="row">
                    <div class="col-sm-11">
                      <table class="table">
                          <thead class="text-primary">
                          <tr>
                            <th>
                              Order ID  
                            </th>
                            <th>
                              Food Name 
                            </th>
                            <th>
                                Delivery charge
                            </th>
                            <th>
                              Payble amount  
                            </th>
                            <th>
                              Customer NAME
                            </th>
                            <th>
                              Mobile No
                            </th>
                            <th class="text-center">
                              Address
                            </th>
                            <th class="text-center">Status</th>
                            <th></th>
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
                           String sql="select * from myorder where status='IN'";
                           ResultSet rs=st.executeQuery(sql);
                         while(rs.next())
                        {
                        %>
                            <tr>
                            <form action="../delivery_panel" method="POST">
                                <td>#<%=rs.getString("id")%></td>
                                <input type="hidden" name="id" value="<%=rs.getString("id")%>">
                                <td><%=rs.getString("food_name")%></td>
                                <td>&#8377;<%=rs.getString("delivery_charges")%></td>
                                <td>&#8377;<%=rs.getString("total_paid")%></td>
                                <td><%=rs.getString("full_name")%></td>
                                <td><%=rs.getString("mobile")%></td>
                                <td><p style="font-size: 12px; color: black"><%=rs.getString("full_name")%><br> <%=rs.getString("flat_no")%>, <%=rs.getString("area")%>,<br><%=rs.getString("landmark")%>, <br><%=rs.getString("town")%>, <%=rs.getString("pin")%></p> </td>
                                <td name="select">
                                    <select name="select" value="change" class="form-control">
                                        <option>Select</option>
                                        <option>Delivered</option>
                                        <option>Cancelled</option>
                                    </select>
                                </td>
                                <td class="text-center">
                                <button type="submit" name="change" value="status_change_button" class="btn btn-secondary">SAVE</button>
                                </td>
                            </form>
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
