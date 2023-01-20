<%-- 
    Document   : area_code
    Created on : 8 May, 2022, 7:57:02 PM
    Author     : 91777
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="dashboard" id="addrest">
         <div id="content">
           <form method="POST" action="../area_code">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-8">
                    <div class="container shadow box"style="background-color:#fff; margin-top: 5%;">
                        <br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-6">
                               <h3 class="text-primary">Add Delivery Area Code</h3>
                            </div>
                        </div><br>
                        
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" name="city" required="" placeholder="City Name" class="form-control" onkeypress="javascript : return isString(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" name="code" required="" placeholder="Area Code" maxlenght="6" class="form-control" onkeypress="javascript : return isNumber(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-3">
                               <button type="submit" name="save" value="add" class="btn btn-primary">ADD</button>
                            </div>    
                        </div><br>
                    </div>
                </div>
               <div class="col-sm-3"></div>
              </div>
            </form>
             
             <div class="container shadow box"style="background-color:#fff; margin-top: 5%;">
              <h3 class="text-primary">Area Code List</h3>
              <div class="row">
                    <div class="col-sm-11">
                      <table class="table">
                          <thead class="text-primary">
                          <tr>
                            <th>
                              Sr.No 
                            </th>
                            <th>
                             City Name
                            </th>
                            <th>
                              Area Code
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                             <% 
                           Connection conn=null;
                           Statement st=null;
                           int i=0;
                           i++;
                           
                           
                           try
                                                                                                                     {
                           Class.forName("com.mysql.jdbc.Driver");
                           conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fast_food_management_system","root","root");
                           st=conn.createStatement();
                           String sql="select * from area_code";
                           ResultSet rs=st.executeQuery(sql);
                         while(rs.next())
                        {
                        %>
                            <tr>
                                <td><%=i++%></td>
                                <td><%=rs.getString("city")%></td>
                                <td><%=rs.getString("area_code")%></td>
                                
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
