<%-- 
    Document   : dashboard
    Created on : 6 Mar, 2022, 11:53:02 AM
    Author     : Administrator
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

      <div class="dashboard" id="dashboard">
          
          <%
          
            Class.forName("com.mysql.jdbc.Driver");
            int s=0; int b=0; int d=0;
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fast_food_management_system","root","root");
            
            String a="select * from myorder where status='Delivered'";
            PreparedStatement del= con.prepareStatement(a);
            ResultSet delivered= del.executeQuery();
            while(delivered.next()){
             s=s+1;
            }
            
            String c="select * from myorder where status='Cancelled'";
            PreparedStatement cncle= con.prepareStatement(c);
            ResultSet cancelled= cncle.executeQuery();
            while(cancelled.next()){
             b=b+1;
            }
            
          %>
        <div id="content">
          <div class="row">    
            <div class="col-sm-4">
                <div class="container box shadow" style="background-color:#fff;"><br>
                  <div class="row">
                      <div class="col-sm-5">
                          <img src="../assets/img/gallery/online-order-1.png" class="padding-margin" height="90px" width="90px"> 
                      </div>
                      <div class="col-sm-5">
                          <h4 style="font-size:50px;"><%=s+b%></h4>
                          <label style="font-size:15px;">Total Orders</label>
                      </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="container box shadow" style="background-color:#fff;"><br>
                  <div class="row">
                      <div class="col-sm-5">
                          <img src="../assets/img/gallery/online-order-2.png" class="padding-margin" height="90px" width="90px"> 
                      </div>
                      <div class="col-sm-6">
                          <h4 style="font-size:50px;"><%=s%></h4>
                          <label style="font-size:15px;">Total Delivered</label>
                      </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="container box shadow " style="background-color:#fff;"><br>
                  <div class="row">
                      <div class="col-sm-5">
                          <img src="../assets/img/gallery/online-order-3.png" class="padding-margin" height="90px" width="90px"> 
                      </div>
                      <div class="col-sm-6">
                          <h4 style="font-size:50px;"><%=b%></h4>
                          <label style="font-size:15px;">Total Canceled</label>
                      </div>
                  </div>
                </div>
              </div>
            </div><br>
          <!----------------------------------------------------------------------------------------------------->
          
                              <!--ORDER LIST-->
          
          <!------------------------------------------------------------------------------------------------------>
          
          
          <div class="container shadow box"style="background-color:#fff;margin-top: 5%;height: 500px;overflow: scroll;">
              <h3 class="text-primary">New Order</h3>
              <div class="row">
                    <div class="col-sm-11">
                      <table class="table">
                          <thead class="text-primary">
                          <tr>
                            <th>
                             Order ID
                            </th>
                            <th>
                              Customer Name
                            </th>
                            <th class="text-center">
                              Location
                            </th>
                            <th class="text-center">
                              Item Name
                            </th>
                            <th>
                              Amount
                            </th>
                            <th>
                              PAYMENT METHOD
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
                                    String sql="select * from myorder where status='IN'";
                                    ResultSet rs=st.executeQuery(sql);
                                  while(rs.next())
                                 {
                                 %>
                            <tr>
                        <form method="post" action="../payment">
                                <td>#<%=rs.getString("id")%></td>
                                <td><%=rs.getString("full_name")%></td>
                                <td class="text-center"><%=rs.getString("town")%></td>
                                <td class="text-center"><%=rs.getString("food_name")%></td>
                                <td>
                                  &#8377 <%=rs.getString("prise")%>
                                </td>
                                <td>Online</td>
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