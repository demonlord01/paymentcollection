<%-- 
    Document   : viewroute
    Created on : Apr 7, 2015, 4:18:38 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="r"%>
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
                    <h1>Route List</h1>
                </div>

                <div id="content_lower">

                    <center>
                        <div id="CSS_Table_Example" style="width:500px;height:470px;">
                    
                            <table style="width:500px;height:470px;align:center">
                                <tr>
                                    <th>        </th>
                                    <th>Route Id</th>
                                    <th>Route Name</th>
                                    <th>City</th>
                                </tr>
                                <r:forEach var="route" items="${requestScope['routeList']}">
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>${route.id}</td>
                                        <td>${route.r_name}</td>
                                        <td>${route.city}</td>                                        
                                    </tr>
                                </r:forEach>
                            </table>
                        </div>
                    
                    <div id="content_lower_form">
                        <center>
                            <form>
                                <input type="button" name="previous" class="btn-style" value="Previous">
                                <input type="button" name="next" class="btn-style" value="Next"><br><br>

                                <input type="button" name="assign" class="btn-style" value="Assign Route">
                                <input type="button" name="delete" class="btn-style" value="Delete Route">
                            </form>
                        </center>
                    </div>
                    </div>
                </div>
            </div>
    </body>
</html>
