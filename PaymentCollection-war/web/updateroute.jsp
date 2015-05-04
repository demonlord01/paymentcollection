<%-- 
    Document   : updateroute
    Created on : May 4, 2015, 3:20:31 PM
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
        <r:set value="${route.id}" var="id" scope="request"></r:set>
        <r:set value="${route.r_name}" var="routename" scope="request"></r:set>
        <r:set value="${route.city}" var="city" scope="request"></r:set>
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
                        <li><a href="changepassword.jsp">Change Password</a></li>
                        <li><a href="Logout">Logout</a></li>
                    </ul>
                </div>

                <div id="content">

                    <center>
                        <form action="AddRoute" method="POST">
                            <upper>
                                <h1>Route Details</h1>
                            </upper>
                            <lower>
                                <input type="hidden" name="id" value="<r:out value="${id}"/>">
                                <br><br><br>
                                <font>Route Name<input type="text" name="routename" style="margin-left:85px;" value="<r:out value="${routename}"/>"></font>
                            <br><br>

                            <font>City<input type="text" name="city" style="margin-left:149px;" value="<r:out value="${city}"/>"></font>
                            <br><br><br>
                            <font style="margin-left:120px;">
                            <input type="submit" name="updateroute" class="btn-style" value="Update">
                            <input type="reset" name="reset" class="btn-style" value="Reset">
                            </font>
                        </lower>
                    </form>
                </center>
            </div>
        </div>
    </body>
</html>
