<%-- 
    Document   : addroute
    Created on : Apr 7, 2015, 4:12:18 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Collection</title>
        <link href="css/stylesheet2.css" type="text/css" rel="stylesheet">
        <script type="text/javascript">
//            var retVal = confirm("Do you want to continue ?");
//                    if (retVal == true){
//            alert("User wants to continue!");
//                    return true;
//            } else{
//            alert("User does not want to continue!");
//                    return false;
//            }
        </script>
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
                    <li><a href="changepassword.jsp">Change Password</a></li>
                    <li><a href="Logout">Logout</a></li>
                </ul>
            </div>

            <div id="content">

                <center>
                    <form>

                        <upper>
                            <h1>Route Details</h1>
                        </upper>

                        <lower>
                            <br><br><br>
                            <font>Route<input type="text" name="route" style="margin-left:85px;"></font>
                            <br><br>

                            <font>City<input type="text" name="city" style="margin-left:96px;"></font>
                            <br><br><br>
                            <font style="margin-left:120px;">
                            <input type="submit" name="Submit" class="btn-style" value="Submit">
                            <input type="reset" name="Reset" class="btn-style" value="Reset">
                            </font>
                        </lower>
                    </form>
                </center>
            </div>
        </div>
    </body>
</html>
