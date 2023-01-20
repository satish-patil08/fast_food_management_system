<%-- 
    Document   : payment
    Created on : 13 Feb, 2022, 10:41:44 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Make Payment</title>
        <link rel="stylesheet" href="../assets/css/theme.css">
        <script src="../assets/js/validation.js"></script>
        
        <style>
           
       .container
		{
			border-radius: 10px;
		}
        </style>
    </head>
    <body><br>
        <form method="POST" action="../payment">
            <div class="row">
                <input type="hidden" name="mid" value="<%out.println(session.getAttribute("cartid"));%>">
                <input type="hidden" name="usr" value="<%out.println(session.getAttribute("uname"));%>">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div class="container shadow"><br>
                        <div class="row">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-3">
                                <center><h3>PAYMENT</h3></center>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" placeholder="Name on Card" name="cardname" required="" class="form-control" onkeypress="javascript : return isString(event)" autocomplete="">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" placeholder="Card Number" name="cardno" required="" class="form-control" onkeypress="javascript : return isNumber(event)"  autocomplete="" maxlength="12">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" placeholder="Expiry Year" name="year" required="" maxlength="4" class="form-control"onkeypress="javascript : return isNumber(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="text" placeholder="Expiry Month" name="month" required="" maxlength="2" class="form-control" onkeypress="javascript : return isNumber(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <input type="password" placeholder="CVV" name="cvv" required="" class="form-control" maxlength="3" onkeypress="javascript : return isNumber(event)">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5">
                               <button type="submit" name="save" value="pay" class="btn btn-primary">Payment</button>
                            </div>
                            <div class="col-sm-5">
                               <button type="reset" name="" value="" class="btn btn-primary">Clear</button>
                            </div>
                        </div><br>
                    </div>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </form>
    </body>
</html>
