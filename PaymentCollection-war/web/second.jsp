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
                    <li><a href="first.jsp">Home</a></li>
                    <li><a href="second.jsp">Salesman</a></li>
                    <li><a href="third.jsp">Customer</a></li>
                    <li><a href="fourth.jsp">Route</a></li>
                    <li><a href="fifth.jsp">Payment Details</a></li>
                    <li><a href="sixth.jsp">Change Password</a></li>
                    <li><a href="first.jsp">Logout</a></li>
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
                                <th>Route</th>
                            </tr>
                            <s:forEach var="salesman" items="${requestScope['salesmanList']}">
                            <tr>
                                <td>${salesman.id}</td>
                                <td>${salesman.s_name}</td>
                                <td><s:set var="route" value="${salesman.s_route}"/>${route}</td>
                            </tr>
                            </s:forEach>
                        </table>
                    </div>
                </div>
                <div id="content_right">
                    <div id="content_right_upper">
                        <h1>Salesman Details</h1>
                    </div>
                    <div id="content_right_lower">
                        <form>
                            <font>
                            <br>
                            Salesman Id<input type="text" name="Salesman Id" style="margin-left:65px;"></font>
                            <br><br>
                            <font>Salesman Password<input type="text" name="Salesman Password" style="margin-left:8px;"></font>
                            <br><br>
                            <font>Salesman Name<input type="text" name="Salesman Name" style="margin-left:38px;"></font>
                            <br><br>
                            <font>Phone Number<input type="text" name="Phone number" style="margin-left:45px;"></font>
                            <br><br>
                            <font>Email id<input type="text" name="Emailid" style="margin-left:95px;"></font>
                            <br><br>
                            <font>Address<input type="text" name="Address" style="margin-left:98px;"></font>
                            <br><br>
                            <font>Route 
                            <select name="route" style="margin-left:113px;">
                                <option value="route1">Green Avenue</option>
                                <option value="route2">Sector 21</option>
                            </select></font>
                            <br>
                            <font>Date Of Joining<input type="text" name="Date of joining" style="margin-left:38px;"></font>
                            <br><br><br>
                            <font style="margin-left:120px;">
                            <input type="button" value="Add">
                            <input type="button" value="Update">
                            <input type="button" value="Delete">
                            </font>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
