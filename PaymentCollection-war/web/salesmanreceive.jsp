<%-- 
    Document   : salesmanroute
    Created on : Apr 24, 2015, 12:21:06 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Collection</title>
        <link href="css/stylesheet2.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <p:set value="${date}" var="getDate" scope="request"></p:set>

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

                    <center>
                        <form action="RecievePayment" method="POST">

                            <upper>
                                <h1>Payment Details</h1>
                            </upper>

                            <lower>
                                <br><br>
                                <font>Routes
                                <select id="route" style="margin-left:113px;" onchange="showCustomer('route', this.value)">
                                    <option>Select Route</option>
                                <p:forEach var="route" items="${requestScope['routeList']}">
                                    <option value="${route.id}">${route.r_name}</option>
                                </p:forEach>
                            </select></font>
                            <br><br>
                            <font>Customer
                            <select id="customer" name="customerid" style="margin-left:93px;" onclick="showCustomer('customer', this.value)">
                                <p:forEach var="customer" items="${requestScope['customerList']}">
                                    <option value="${customer.id}" selected>${customer.c_name}</option>
                                </p:forEach>
                            </select></font>
                            <br><br>
                            <font>Date of payment<input type="text" id="dateofpayment" disabled style="margin-left:47px;" value="<p:out value="${getDate}"/>"></font>
                            <br><br>
                            <font>Payment due<input type="text" id="paymentdue" disabled style="margin-left:74px;" value=""></font>
                            <br><br>
                            <font>Payment Received<input type="number" name="paymentreceived" style="margin-left:30px;" value=""></font>
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
        <script>
            function showCustomer(x, Id)
            {
                var xmlhttp;
                if (x === "route") {
                    if (Id === "")
                    {
                        document.getElementById("customer").innerHTML = "";
                        return;
                    }
                    if (window.XMLHttpRequest)
                    {// code for IE7+, Firefox, Chrome, Opera, Safari
                        xmlhttp = new XMLHttpRequest();
                    }
                    else
                    {// code for IE6, IE5
                        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    xmlhttp.onreadystatechange = function ()
                    {
                        if (xmlhttp.readyState === 4 && xmlhttp.status === 200)
                        {
                            document.getElementById("customer").innerHTML = xmlhttp.responseText;
                        }
                    };
                    xmlhttp.open("POST", "RecievePayment?rid=" + Id, true);
                    xmlhttp.send();
                } else if (x === "customer") {
                    if (Id === "")
                    {
                        document.getElementById("paymentdue").value = 0;
                        return;
                    }
                    if (window.XMLHttpRequest)
                    {// code for IE7+, Firefox, Chrome, Opera, Safari
                        xmlhttp = new XMLHttpRequest();
                    }
                    else
                    {// code for IE6, IE5
                        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    xmlhttp.onreadystatechange = function ()
                    {
                        if (xmlhttp.readyState === 4 && xmlhttp.status === 200)
                        {
                            document.getElementById("paymentdue").value = xmlhttp.responseText;
                        }
                    };
                    xmlhttp.open("POST", "RecievePayment?cid=" + Id, true);
                    xmlhttp.send();
                }
            }
        </script>
    </body>
</html>
