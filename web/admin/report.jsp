<%-- 
    Document   : user_list
    Created on : 10 Mar, 2022, 12:39:06 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <div class="dashboard" id="addoffer">
         <div id="content">
             <form method="POST" action="view_report.jsp">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-8">
                    <div class="container shadow box"style="background-color:#fff;">
                        <br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5">
                                <h3 class="text-primary">View Report</h3>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <label>From</label>
                                <input type="date" name="start" placeholder="Offer Start Date" class="form-control">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <label>To</label>
                                <input type="date" name="end" placeholder="Offer End Date" class="form-control">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-4">
                               <button type="submit" name="save" value="View Report" class="btn btn-primary">View Report</button>
                            </div>
                            
                            <div class="col-sm-4">
                               <button type="submit" name="save" value="All Reports" class="btn btn-primary">All Reports</button>
                            </div>
                           
                            <div class="col-sm-3">
                               <button type="reset" name="save" value="addofr" class="btn btn-danger">Clear</button>
                            </div>
                        </div><br>
                    </div>
                </div>
               <div class="col-sm-1"></div>
            </div>
          </form>
        </div>
      </div>
        
         <%@include file="admin_header.jsp" %>
    </body>
</html>
