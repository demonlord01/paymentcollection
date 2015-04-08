<%-- 
    Document   : editroute
    Created on : Apr 7, 2015, 4:12:18 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <li><a href="viewcustomer.jsp">Customer</a></li>
                    <li><a href="viewroute.jsp">Route</a></li>
                    <li><a href="viewpayment.jsp">Payment Details</a></li>
                    <li><a href="confirmpassword.jsp">Change Password</a></li>
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
                            <font>Route 
                            <select name="route" style="margin-left:113px;">
                                <option value="route1"></option>
                                <option value="route2"></option>
                            </select></font>
                            <br><br>

                            <font>City<input type="text" name="City" style="margin-left:96px;"></font>
                            <br><br><br>
                            <font style="margin-left:120px;">
                            <input type="button" name="Submit" class="btn-style" value="Submit">
                            <a href="editroute.html"><input type="button" name="Reset" class="btn-style" value="Reset"></a>
                            </font>
                        </lower>
                    </form>
                </center>
            </div>
        </div>
    </body>
</html>
