<%-- 
    Document   : viewpayment
    Created on : Apr 7, 2015, 4:18:26 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

                <div id="content_upper">
                    <h1>Payment List</h1>
                </div>

                <div id="content_lower">

                    <div id="CSS_Table_Example" >

                        <table style="width:970px;height:470px;">
                            <tr> 

                                <td>
                                    Payment Id
                                </td>
                                <td >
                                    Payment Due
                                </td>
                                <td>
                                    Salesman
                                </td>
                                <td>
                                    Customer
                                </td>
                                <td>
                                    Address
                                </td>
                                <td>
                                    Payment Received
                                </td>
                                <td>
                                    Date Of Payment
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div id="content_lower_form">
                        <center>
                            <form>
                                <input type="button" name="Previous" class="btn-style" value="Previous">
                                <input type="button" name="Next" class="btn-style" value="Next"><br><br>
                                <input type="button" name="View" class="btn-style" value="View Routes">
                                <input type="button" name="Add" class="btn-style" value="Add Payment">
                                <input type="button" name="Edit" class="btn-style" value="Edit Payment">
                                <input type="button" name="Delete" class="btn-style" value="Delete Payment">
                            </form>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
