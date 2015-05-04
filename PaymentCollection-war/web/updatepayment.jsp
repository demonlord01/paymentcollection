<%-- 
    Document   : updatepayment
    Created on : May 4, 2015, 11:13:38 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Collection</title>
        <link href="css/stylesheet2.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <div id="wrapper">

            <div id="header">
                <h1>Payment Collection</h1>
            </div>

            <div id="navigation_inner">
                <ul>
                    <li><a href="ViewSalesman">Salesman</a></li>
                    <li><a href="ViewCustomer">Customer</a></li>
                    <li><a href="ViewRoute">Route</a></li>
                    <li><a href="ViewPayment">Payment Details</a></li>
                    <li><a href="changepassword.jsp">Change Password</a></li>
                    <li><a href="Logout">Logout</a></li>
                </ul>
            </div>

            <div id="content">

                <center>
                    <form>

                        <upper>
                            <h1>Payment Details</h1>
                        </upper>

                        <lower>
                            <br><br>
                            <font>Payment due<input type="text" name="Payment due" style="margin-left:54px;"></font>
                            <br><br>
                            <font>Route 
                            <select name="route" style="margin-left:106px;">
                                <option value="route1"></option>
                                <option value="route2"></option>
                            </select></font>
                            <br><br>
                            <font>Salesman<input type="text" name="Salesman" style="margin-left:82px;"></font>
                            <br><br>
                            <font>Customer<input type="text" name="Customer" style="margin-left:82px;"></font>
                            <br><br>
                            <font>Payment Received<input type="text" name="Payment Received" style="margin-left:16px;"></font>
                            <br><br>
                            <font>Date of payment<input type="text" name="Date of payment" style="margin-left:29px;"></font>

                            <br><br><br>
                            <font style="margin-left:120px;">
                            <input type="submit" name="submit" class="btn-style" value="Submit">
                            <input type="reset" name="reset" class="btn-style" value="Reset">
                            </font>
                        </lower>
                    </form>
                </center>
            </div>
        </div> 
    </body>
</html>

