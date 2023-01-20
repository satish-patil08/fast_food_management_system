<%-- 
    Document   : user_list
    Created on : 10 Mar, 2022, 12:39:06 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <div class="dashboard" id="addfood">
         <div id="content">
          <form method="POST" action="../foods">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-8">
                    <div class="container shadow box"style="background-color:#fff; ">
                        <br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5">
                                <h3 class="text-primary">Add Food</h3>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" name="fname" placeholder="Food Name" required="" class="form-control" >
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" name="fdprise" placeholder="Food Prise" required="" class="form-control" onkeypress="javascript : return isNumber(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                    <input type="text" name="rname" placeholder="Restaurant Name" required="" class="form-control" onkeypress="javascript : return isString(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                    <input type="text" name="add" required="" placeholder="Restaurant Address" class="form-control"     >
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <select class="form-control" name="select">
                                    <option>Select Category</option>
                                    <option>Chinese</option>
                                    <option>Veg</option>
                                    <option>Non-veg</option>
                                    <option>Coffee</option>
                                    <option>Burger</option>
                                    <option>Ice Cream</option>
                                    <option>Biryani</option>
                                    <option>Sandwich</option>
                                    <option>Shake</option>
                                    <option>Rolls</option>
                                    <option>Desserts</option>
                                    <option>Bakery</option>
                                    <option>Momos</option>
                                    
                                </select>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                    <input type="text" required="" name="charge" placeholder="Delivery Charges" class="form-control">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <lable>Food Image</lable>
                                <input type="file" name="image" required="" class="form-control">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-3">
                               <button type="submit" name="save" value="add" class="btn btn-primary">ADD</button>
                            </div>
                            <div class="col-sm-3">
                               <button type="submit" name="btnrmv" value="remove" class="btn btn-danger">REMOVE</button>
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
