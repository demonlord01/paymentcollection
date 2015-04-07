<%-- 
    Document   : confirmpassword
    Created on : Apr 7, 2015, 4:11:31 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Collection</title>
        <link href="css/stylesheetlogin.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <div id="wrapper">

            <div id="header">
                <h1>Payment Collection</h1>
            </div>

            <div id="navigation_inner">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="SalesmanServlet">Salesman</a></li>
                    <li><a href="viewcustomer.jsp">Customer</a></li>
                    <li><a href="viewroute.jsp">Route</a></li>
                    <li><a href="viewpayment.jsp">Payment Details</a></li>
                    <li><a href="confirmpassword.jsp">Change Password</a></li>
                    <li><a href="LogoutServlet">Logout</a></li>
                </ul>
            </div>

            <div id="content">
                <div id="content_inner">

                    <form align="center" autocomplete="on">
                        <br><br>
                        <p>Old Password <input type="password" name="oldpassword" style="margin-left:28px;"></p>
                        <p>Password <input type="password" name="newpassword" style="margin-left:55px;"></p>
                        <p>Confirm Password<input type="password" name="confirmpassword" style="margin-left:5px;"></p>
                        <p><input type="button" value="OK" class="btn-style"></p>
                    </form>

                </div>

            </div>

            <div id="content_inner2">
                <div id="content_lower">

                    <div id="footer">
                        <h1> Payment Collection</h1>
                        <p>This web application is a solution for product based industry which is easy to use for salesman for receiving payment from customer.
                            In this web application, administrator manage over all tasks of the company.
                            This application manages payment received by customer and due payment record.</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
