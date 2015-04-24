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
                    <li><a href="#">Route Details</a></li>
                    <li><a href="#">Payment Details</a></li>
                    <li><a href="#">Receive Payment</a></li>
                    <li><a href="#">Change Password</a></li>
                    <li><a href="#">Logout</a></li>
                </ul>
            </div>

            <div id="content">

                <div id="content_upper">
                    <h1>Search By Name<input type="text" name="CustomerId" style="margin-left:20px;"></h1>
                </div>

                <div id="content_lower">

                    <div id="CSS_Table_Example" >

                        <table style="width:930px;height:470px;">
                            <tr> 
                                <th>Route Id</th>
                                <th>Route Name</th>
                                <th>City</th>
                            </tr>
                        </table>
                    </div>

                    <div id="content_lower_form">
                        <center>
                            <form>
                                <input type="submit" name="Previous" class="btn-style" value="Previous">
                                <input type="submit" name="Next" class="btn-style" value="Next"><br><br>
                                <input type="submit" name="showcustomers" class="btn-style" value="Show Customers">
                            </form>
                        </center>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
