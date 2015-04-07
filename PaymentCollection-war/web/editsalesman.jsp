<%-- 
    Document   : editsalesman
    Created on : Apr 7, 2015, 4:12:31 PM
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

                <center>
                    <form>

                        <upper>
                            <h1>Salesman Details</h1>
                        </upper>

                        <lower>
                            <br><br>
                            <font>Salesman Password<input type="text" name="Salesman Password" style="margin-left:8px;"></font>
                            <br><br>
                            <font>Salesman Name<input type="text" name="Salesman Name" style="margin-left:38px;"></font>
                            <br><br>
                            <font>Phone Number<input type="text" name="Phone number" style="margin-left:45px;"></font>
                            <br><br>
                            <font>Email id<input type="text" name="Emailid" style="margin-left:95px;"></font>
                            <br><br>
                            <font>Address<input type="text" name="Address" style="margin-left:98px;"></font>
                            <br><br>
                            <font>Route 
                            <select name="route" style="margin-left:113px;">
                                <option value="route1"></option>
                                <option value="route2"></option>
                            </select></font>
                            <br><br>
                            <font>Date Of Joining<input type="text" name="Date of joining" style="margin-left:38px;"></font>
                            <br><br><br>
                            <font style="margin-left:120px;">
                            <input type="button" name="Submit" class="btn-style" value="Submit">
                            <a href="editsalesman.html"><input type="button" name="Reset" class="btn-style" value="Reset"></a>
                            </font>
                        </lower>
                    </form>
                </center>
            </div>
        </div>
    </body>
</html>
