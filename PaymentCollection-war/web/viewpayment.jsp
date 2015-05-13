<%-- 
    Document   : viewpayment
    Created on : Apr 7, 2015, 4:18:26 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Collection</title>
        <link href="css/jquery.dataTables.css" type="text/css" rel="stylesheet">
        <link href="css/stylesheet1.css" type="text/css" rel="stylesheet">
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
                    <li><a href="ViewPayment">Payment Details</a></li>
                    <li><a href="changepassword.jsp">Change Password</a></li>
                    <li><a href="Logout">Logout</a></li>
                </ul>
            </div>
            
            <div class="clear"></div>

            <div id="content">

                <div id="content_upper">
                    <h1>Payment List</h1>
                </div>

                <div id="content_lower">

                    <div id="CSS_Table_Example" >

                        <table id="datatableExm" style="width:930px;height:450px;">
                            <thead>
                            <tr style="background:silver;">
                                <th>Payment Id</th>
                                <th>Customer</th>
                                <th>Salesman</th>
                                <th>Payment Received</th>
                                <th>Payment Due</th>
                                <th>Location</th>
                                <th>Date Of Payment</th>
                            </tr>
                            </thead>
                            <tbody>
                            <p:forEach var="payment" items="${requestScope['paymentList']}">
                                <tr>
                                    <td>${payment.id}</td>
                                    <td>${payment.p_customer.c_name}</td>
                                    <td>${payment.p_salesman.s_name}</td>
                                    <td>${payment.p_recievepayment}</td>
                                    <td>${payment.p_recievepayment}</td>
                                    <td>${payment.p_gpslocation}</td>
                                    <td>${payment.p_date}</td>
                                </tr>
                            </p:forEach>
                            </tbody>
                        </table>
                    </div>

                <div id="content_lower_form">
                        <center>
                            <form name="toservlet" action="AddPayment" method="POST">
                                <input type="button" name="previous" class="btn-style" value="Previous">
                                <input type="button" name="next" class="btn-style" value="Next"><br><br>
                            </form>
                        </center>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
         <script type="text/javascript" src="js/jquery-1.11.1.min.js">
        </script>
        <script type="text/javascript" src="js/jquery.dataTables.min.js">
        </script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#datatableExm").dataTable();
            });
            </script>
    </body>
</html>
