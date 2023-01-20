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

        <div class="dashboard" id="complaintd">
        <div id="content" style=" ">
          <div class="container shadow box"style="background-color:#fff; margin-top:0%;height: 630px;overflow: scroll;">
              <h3 class="text-primary">Food List</h3>
              <div class="row">
                    <div class="col-sm-12">
                      <table class="table">
                          <thead class="text-primary">
                          <tr>
                            <th>
                              Sr.No.  
                            </th>
                            <th class="text-center">
                             Food Name
                            </th>
                            <th class="text-center">
                              Food prise
                            </th>
                            <th>
                                Delivery Charge
                            </th>
                            <th class="text-center">
                             Restaurant Name
                            </th>
                            <th class="text-center">
                              Restaurant Address
                            </th>
                            <th class="text-center">
                               Food Type
                            </th>
                           
                            <th class="text-center">Update</th>
                            <th class="text-center">Delete</th>
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
                           String sql="select * from add_food";
                           ResultSet rs=st.executeQuery(sql);
                         while(rs.next())
                        {
                        %>
                            <tr>
                        <form action="../food_list" method="post">
                               <td><%=i++%></td>
                               <input type="hidden" name="id" value="<%=rs.getString("id")%>" class="form-control">
                               <td><input type="text" name="fname" value="<%=rs.getString("food_name")%>" class="form-control"></td>
                               <td><input type="text" name="price" value="<%=rs.getString("prise")%>" class="form-control"></td>
                               <td><input type="text" name="charge" value="<%=rs.getString("delivery_charges")%>" class="form-control"></td>
                               <td><input type="text" name="rname" value="<%=rs.getString("rest_name")%>" class="form-control"></td>
                               <td><input type="text" name="add" value="<%=rs.getString("rest_add")%>" class="form-control"></td>
                               <td><input type="text" name="select" value="<%=rs.getString("category")%>" class="form-control"></td>
                               
                               <td class="text-center"><button type="submit" class="btn btn-secondary" name="upd" value="update">Update</button></td>
                               <td class="text-center"><button type="submit" class="btn btn-danger" name="rmv" value="delete">Delete</button></td>
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
                        <br>
                    </div>
                  </div>
                        <br>
              </div>
          </div>
        </div>

         <%@include file="admin_header.jsp" %>
    </body>
</html>
