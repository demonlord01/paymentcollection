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
                  
                    <li><a href="ViewSalesman">Salesman</a></li>
                    <li><a href="ViewCustomer">Customer</a></li>
                    <li><a href="ViewRoute">Route</a></li>
                    <li><a href="viewpayment.jsp">Payment Details</a></li>
                    <li><a href="confirmpassword.jsp">Change Password</a></li>
                    <li><a href="Logout">Logout</a></li>
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
                                <th>Salesman Id</th>
                                <th>Salesman Name</th>
                                <th>Phone Number</th>
                                <th>Email Id</th>
                                <th>Address</th>
                                <th>Date Of Joining</th>
                            </tr>
                            <s:forEach var="salesman" items="${requestScope['salesmanList']}">
                                <tr>
                                    <td><a>${salesman.id}</a></td>
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
                            <form action="AddSalesman" method="POST">
                                <input type="submit" name="previous" class="btn-style" value="Previous">
                                <input type="submit" name="next" class="btn-style" value="Next"><br><br>
                                <input type="submit" name="add" class="btn-style" value="Add Salesman">  
                            </form>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
