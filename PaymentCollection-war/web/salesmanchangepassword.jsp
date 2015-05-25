<%-- 
    Document   : salesmanchangepassword
    Created on : Apr 24, 2015, 12:21:06 PM
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
                    <li><a href="ViewRouteDetails">Route Details</a></li>
                    <li><a href="ViewPaymentDetails">Payment Details</a></li>
                    <li><a href="RecievePayment">Receive Payment</a></li>
                    <li><a href="salesmanchangepassword.jsp">Change Password</a></li>
                    <li><a href="Logout">Logout</a></li>
                </ul>
            </div>

            <div id="content">
                <div id="content_inner">
                    <form action="ChangePassword" method=POST align="center">
                        <br><br>
                        <p>Old Password <input type="password" required name="oldPassword" style="margin-left:51px;"></p>
                        <p>New Password <input type="password" required name="newPassword" style="margin-left:42px;"></p>
                        <p>Confirm Password<input type="password" required name="confirmPassword" style="margin-left:25px;"></p>
                        <p><input type="submit" value="OK" class="btn-style"></p>
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
