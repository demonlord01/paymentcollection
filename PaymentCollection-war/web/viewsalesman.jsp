<%-- 
    Document   : viewsalesman
    Created on : Apr 7, 2015, 3:28:27 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
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
                    <li><a href="viewsalesman.jsp">Salesman</a></li>
                    <li><a href="viewcustomer.jsp">Customer</a></li>
                    <li><a href="viewroute.jsp">Route</a></li>
                    <li><a href="viewpayment.jsp">Payment Details</a></li>
                    <li><a href="confirmpassword.jsp">Change Password</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </div>

            <div id="content">

                <div id="content_upper">
                    <h1>Salesman List</h1>
                </div>

                <div id="content_lower">

                    <div id="CSS_Table_Example" >

                        <table style="width:970px;height:470px;">
                            <tr> 
                                <td>Salesman Id</td>
                                <td>Salesman Name</td>
                                <td>Phone Number</td>
                                <td>Email Id</td>
                                <td>Address</td>
                                <td>Date Of Joining</td>
                            </tr>
                            <s:forEach var="salesman" items="${requestScope['salesmanList']}">
                                <tr>
                                    <td>${salesman.id}</td>
                                    <td>${salesman.s_name}</td>
                                    <td>${salesman.s_phonenumber}</td>
                                    <td>${salesman.s_emailid}</td>
                                    <td>${salesman.s_address}</td>
                                    <td>${salesman.s_dateofjoining}</td>
                                </tr>
                            </s:forEach>
                        </table>
                    </div>

                    <div id="content_lower_form">
                        <center>
                            <form>
                                <input type="button" name="Previous" class="btn-style" value="Previous">
                                <input type="button" name="Next" class="btn-style" value="Next"><br><br>
                                <input type="button" name="View" class="btn-style" value="View Routes">
                                <input type="button" name="Add" class="btn-style" value="Add Salesman">
                                <input type="button" name="Edit" class="btn-style" value="Edit Salesman">
                                <input type="button" name="Delete" class="btn-style" value="Delete Salesman">
                            </form>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
