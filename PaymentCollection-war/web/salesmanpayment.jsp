<%-- 
    Document   : salesmanconfirm
    Created on : Apr 24, 2015, 12:21:06 PM
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
                    <li><a href="ViewRouteDetails">Route Details</a></li>
                    <li><a href="#">Payment Details</a></li>
                    <li><a href="#">Receive Payment</a></li>
                    <li><a href="#">Change Password</a></li>
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
                                <td>Payment Due</td>
                                <td>Salesman</td>
                                <td>Customer </td>
                                <td>Address</td>
                                <td>Payment Received</td>
                                <td>Date Of Payment</td>
                            </tr>
                        </table>
                    </div>

                    <div id="content_lower_form">
                        <center>
                            <form>
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
