<%-- 
    Document   : updatecustomer
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
        <r:set value="${customer.id}" var="id" scope="request"></r:set>
        <r:set value="${customer.c_name}" var="name" scope="request"></r:set>
        <r:set value="${customer.c_phonenumber}" var="phonenumber" scope="request"></r:set>
        <r:set value="${customer.c_emailid}" var="emailid" scope="request"></r:set>
        <r:set value="${customer.c_address}" var="address" scope="request"></r:set>
        <r:set value="${customer.c_address}" var="address" scope="request"></r:set>
        <r:set value="${customer.c_duepayment}" var="duepayment" scope="request"></r:set>
        <r:set value="${customerRoute}" var="customerRoute" scope="request"></r:set>
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
                        <form action="UpdateCustomer">
                            <upper>
                                <h1>Customer Details</h1>
                            </upper>

                            <lower>
                                <br><br>
                                <input type="text" name="customerid" hidden style="margin-left:38px;" value="<r:out value="${id}"/>">
                            <font>Customer Name<input type="text" name="customerName" style="margin-left:35px;" value="<r:out value="${name}"/>"></font>
                            <br><br>
                            <font>Phone Number<input type="text" name="phoneNumber" style="margin-left:45px;" value="<r:out value="${phonenumber}"/>"></font>
                            <br><br>
                            <font>Email id<input type="text" name="emailId" style="margin-left:95px;" value="<r:out value="${emailid}"/>"></font>
                            <br><br>
                            <font>Address<input type="text" name="address" style="margin-left:98px;" value="<r:out value="${address}"/>"></font>
                            <br><br>
                            <font>Due Payment<input type="text" name="duePayment" style="margin-left:55px;" value="<r:out value="${duepayment}"/>"></font>
                            <br><br>
                            <font>Route<input type="text" name="duePayment" style="margin-left:113px;" disabled value="<r:out value="${customerRoute}"/>"></font>
                            <br><br>
                            <font>Update Route
                            <select name="route" style="margin-left:45px;">
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
