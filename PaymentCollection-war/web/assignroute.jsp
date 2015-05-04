<%-- 
    Document   : assignroute
    Created on : Apr 27, 2015, 12:34:25 AM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Collection</title>
        <link href="css/stylesheetassignroute.css" type="text/css" rel="stylesheet">
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

            <div id="content">
                <div id="content_upper">
                    <br>
                    <input type="text" hidden name="salesmanname">
                    <input type="text" hidden name="salesmanaddress" style="margin-left:80px;">
                </div>

                <div id="content_lower">
                    <div id="content_lower_left">
                        <div id="content_lower_left_upper">
                            <h1 align="center">Assigned Routes</h1>
                        </div>

                        <div id="content_lower_left_lower">
                            <div id="CSS_Table_Example" style="width:410px;height:400px;">
                                <table style="width:410px;height:410px;align:left">
                                    <tr>
                                        <th>        </th>
                                        <th>Route Id</th>
                                        <th>Route Name</th>
                                        <th>City</th>
                                    </tr>
                                </table>
                            </div>

                            <form>
                                <br>
                                <input type="submit" name="delete" class="btn-style" value="Delete" style="margin-left:150px;">
                            </form>
                        </div>
                    </div>

                    <div id="content_lower_right">
                        <div id="content_lower_right_upper">
                            <h1 align="center">Unassigned Routes</h1>
                        </div>
                        <div id="content_lower_right_lower">
                            <div id="CSS_Table_Example" style="width:410px;height:400px;">
                                <table style="width:410px;height:410px;align:left">
                                    <tr>
                                        <th>        </th>
                                        <th>Route Id</th>
                                        <th>Route Name</th>
                                        <th>City</th>
                                    </tr>
                                </table>
                            </div>

                            <form>
                                <br>
                                <input type="submit" name="assign" class="btn-style" value="Assign Route" style="margin-left:150px;">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
