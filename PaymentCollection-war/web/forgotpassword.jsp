<%-- 
    Document   : forgotpassword
    Created on : May 8, 2015, 4:32:03 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
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

            <div id="navigation">
                <ul>

                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="aboutus.jsp">About us</a></li>
                    <li><a href="contactus.jsp">Contact us</a></li>
                </ul>
            </div>

            <div id="content">
                <div id="content_inner">
                    <font style="margin-left: 160px;font-size: x-large;font-weight: bold;">Find Your Account</font>
                    <hr style="margin: 1px 20px;size: 1px;">
                    <form action="Login" method="POST" align="center" autocomplete="on">

                        <br><br><br>
                        <label>Email Id:</label>
                        <input type="text" name="emailid" placeholder="Enter your email id" size="24"><br><br>

                        <input type="submit" name="search" value="Search" class="btn-style">
                        <br><br>

                    </form>
                    <a href="login.jsp" style="text-decoration: none;margin-left: 230px;">Cancel</a>
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
