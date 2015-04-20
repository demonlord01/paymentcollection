<%-- 
    Document   : editcustomer
    Created on : Apr 7, 2015, 4:11:49 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="r" %>
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
                    <form>
                        <upper>
                            <h1>Customer Details</h1>
                        </upper>

                        <lower>
                            <br><br>
                            <font>Customer Name<input type="text" name="customerName" style="margin-left:35px;"></font>
                            <br><br>
                            <font>Phone Number<input type="text" name="phoneNumber" style="margin-left:45px;"></font>
                            <br><br>
                            <font>Email id<input type="text" name="emailId" style="margin-left:95px;"></font>
                            <br><br>
                            <font>Address<input type="text" name="address" style="margin-left:98px;"></font>
                            <br><br>
                            <font>Due Payment<input type="text" name="duePayment" style="margin-left:55px;"></font>
                            <br><br>
                            <font>Route
                            <select name="route" style="margin-left:113px;">
                                <r:forEach var="route" items="${requestScope['routeList']}">
                                <option value="${route.id}">${route.r_name}</option>
                                </r:forEach>
                            </select></font>
                            <br><br><br>
                            <font style="margin-left:120px;">
                            <input type="submit" name="submit" class="btn-style" value="Submit">
                            <input type="button" name="reset" class="btn-style" value="Reset">
                            </font>
                        </lower>
                    </form>
                </center>
            </div>
        </div>
    </body>
</html>
