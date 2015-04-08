<%-- 
    Document   : login
    Created on : Apr 7, 2015, 3:21:56 PM
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

                    <form action="Login" method="POST"align="center" autocomplete="on">

                        <br><br><br>
                        <label for="admin_username">Username:</label>
                        <input id="admin_username" type="text" name="username" placeholder="Username" size="24"><br><br>

                        <label for="admin_password">Password:</label>
                        <input id="admin_password" type="password" name="password" placeholder="Password" size="24"><br><br>

                        <input type="submit" value="Login" class="btn-style">
                        <br><br>
                        <input type="submit" value="Forget Password" class="btn-style">

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
