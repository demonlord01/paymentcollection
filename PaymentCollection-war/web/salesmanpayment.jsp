<%-- 
    Document   : salesmanpayment
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
        <link href="css/stylesheet1.css" type="text/css" rel="stylesheet">
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

                <div id="content_upper">
                    <h1>Payment List</h1>
                </div>

                <div id="content_lower">

                    <div id="CSS_Table_Example" >

                        <table style="width:930px;height:520px;">
                            <tr> 
                                <td>Payment Id</td>
                                <td>Salesman</td>
                                <td>Customer </td>
                                <td>Location</td>
                                <td>Payment Received</td>
                                <td>Due Payment</td>
                                <td>Date Of Payment</td>
                            </tr>
                            <p:forEach var="payment" items="${requestScope['paymentList']}">
                                <tr>
                                    <td>${payment.id}</td>
                                    <td>${payment.p_salesman.s_name}</td>
                                    <td>${payment.p_customer.c_name}</td>
                                    <td>${payment.p_gpslocation}</td>
                                    <td>${payment.p_recievepayment}</td>
                                    <td>${payment.p_duepayment}</td>
                                    <td>${payment.p_date}</td>
                                </tr>
                            </p:forEach>
                        </table>
                    </div>

                    <div id="content_lower_form">
                        <center>
                            <form name="toservlet" action="ViewReceivePayment" method="POST">
                                <input type="submit" name="Previous" class="btn-style" value="Previous">
                                <input type="submit" name="Next" class="btn-style" value="Next"><br><br>
                            </form>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
