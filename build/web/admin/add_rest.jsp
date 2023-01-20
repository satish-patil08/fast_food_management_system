<%-- 
    Document   : user_list
    Created on : 10 Mar, 2022, 12:39:06 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <div class="dashboard" id="addrest">
         <div id="content">
           <form method="POST" action="../restaurant">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-8">
                    <div class="container shadow box"style="background-color:#fff; margin-top: 5%;">
                        <br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5">
                               <h3 class="text-primary">Add Restaurant</h3>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" name="foodname" placeholder="Restaurant Name" required="" class="form-control" onkeypress="javascript : return isString(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" name="oname" placeholder="Owner Name" required="" class="form-control" onkeypress="javascript : return isString(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" name="mob" placeholder="Mobile No"  required="" class="form-control" onkeypress="javascript : return isContactno(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="add" required="" placeholder="Address"></textarea>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-3">
                               <button type="submit" name="save" value="add" class="btn btn-primary">ADD</button>
                            </div>
                            <div class="col-sm-3">
                               <button type="submit" name="upd" value="update" class="btn btn-secondary">UPDATE</button>
                            </div>
                            <div class="col-sm-3">
                               <button type="submit" name="rmv" value="remove" class="btn btn-danger">REMOVE</button>
                            </div>
                            
                        </div><br>
                    </div>
                </div>
               <div class="col-sm-3"></div>
              </div>
            </form>
          </div>
        </div>
         <%@include file="admin_header.jsp" %>
    </body>
</html>
