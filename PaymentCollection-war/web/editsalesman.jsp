<%-- 
    Document   : editsalesman
    Created on : Apr 7, 2015, 4:12:31 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="routes"%>
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
                    <li><a href="viewpayment.jsp">Payment Details</a></li>
                    <li><a href="confirmpassword.jsp">Change Password</a></li>
                    <li><a href="Logout">Logout</a></li>
                </ul>
            </div>

            <div id="content">

                <center>
                    <form action="AddSalesman" method="POST">
                        <upper>
                            <h1>Salesman Details</h1>
                        </upper>

                        <lower>
                            <br><br>
                            <font>Salesman Name<input type="text" name="salesmanName" required style="margin-left:38px;"></font>
                            <br><br>
                            <font>Salesman Password<input type="text" name="salesmanPassword" required style="margin-left:8px;"></font>                            
                            <br><br>
                            <font>Phone Number<input type="number" name="salesmanPhoneNumber" min="10000000" max="999999999999999" maxlength="15" required style="margin-left:45px;"></font>
                            <br><br>
                            <font>Email id<input type="email" name="salesmanEmailid" required style="margin-left:95px;"></font>
                            <br><br>
                            <font>Address<input type="text" name="salesmanAddress" style="margin-left:98px;"></font>
                            <br><br>
                            <font>Route 
                            <select name="salesmanRoute" style="margin-left:113px;">
                                <routes:forEach var="route" items="${requestScope['routesList']}">
                                    <option value="${route.id}">${route.r_name}</option>
                                </routes:forEach>
                            </select></font>
                            <br><br>
                            <font>Date Of Joining<input type="date" name="salesmanDateOfJoining" style="margin-left:38px;"></font>
                            <br><br><br>
                            <font style="margin-left:120px;">
                            <input type="submit" name="submit" class="btn-style" value="Submit">
                            <input type="submit" name="Reset" class="btn-style" value="Reset">
                            </font>
                        </lower>
                    </form>
                </center>
            </div>
        </div>
    </body>
</html>
