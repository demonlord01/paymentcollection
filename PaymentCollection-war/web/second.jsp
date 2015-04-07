<%-- 
    Document   : second
    Created on : Apr 4, 2015, 11:35:17 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Collection</title>
        <link href="css/stylesheet12.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h1>Payment Collection</h1>
            </div>
            <div id="navigation_inner">
                <ul>
                    <li><a href="SalesmanServlet">Salesman</a></li>
                    <li><a href="third.jsp">Customer</a></li>
                    <li><a href="fourth.jsp">Route</a></li>
                    <li><a href="fifth.jsp">Payment Details</a></li>
                    <li><a href="sixth.jsp">Change Password</a></li>
                    <li><a href="LogoutServlet">Logout</a></li>
                </ul>
            </div>
            <div id="content">
                <div id="content_left">
                    <div id="content_left_upper">
                        <h1>Salesman List</h1>
                    </div>
                    <div id="content_left_lower">
                        <table>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Phone Number</th>
                                <th>E-mail ID</th>
                                <th>Address</th>
                                <th>Date Of Joining</th>
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
                </div>
            </div>
        </div>
    </body>
</html>
