<%-- 
    Document   : salesmanconfirm
    Created on : Apr 24, 2015, 12:21:06 PM
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
                    <li><a href="ViewRouteDetails">Route Details</a></li>
                    <li><a href="#">Payment Details</a></li>
                    <li><a href="#">Receive Payment</a></li>
                    <li><a href="#">Change Password</a></li>
                    <li><a href="Logout">Logout</a></li>
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
                            <s:forEach var="salesmanroutes" items="${requestScope['salesmanRoutes']}">
                                <tr onclick="myFunction(this, '#c9cc99', 'cc3333');">
                                    <td>${salesmanroutes.id}</td>
                                    <td>${salesmanroutes.r_name}</td>
                                    <td>${salesmanroutes.city}</td>
                                </tr>
                            </s:forEach>
                        </table>
                    </div>

                    <div id="content_lower_form">
                        <center>
                            <form name="toservlet" action="ViewSalesmanCustomers" method="POST">
                                <input type="submit" name="Previous" class="btn-style" value="Previous">
                                <input type="submit" name="Next" class="btn-style" value="Next"><br><br>
                                <button type="submit" id="editid_C" class="btn-style" name="showcustomers"
                                        value="update" onclick="callservlet();">Show Customers</button>
                            </form>
                        </center>
                    </div>
                </div>
            </div>
        </div>
        <script>
            var preEl;
            var orgBColor;
            var orgTColor;
            function myFunction(el, backColor, textColor) {
                if (typeof (preEl) !== 'undefined') {
                    preEl.bgColor = orgBColor;
                    try {
                        ChangeTextColor(preEl, orgTColor);
                    } catch (e) {
                        ;
                    }
                }
                orgBColor = el.bgColor;
                orgTColor = el.style.color;
                el.bgColor = backColor;

                try {
                    ChangeTextColor(el, textColor);
                } catch (e) {
                    ;
                }
                preEl = el;
            }
            function ChangeTextColor(a_obj, a_color) {
                for (i = 0; i < a_obj.cells.length; i++) {
                    var y = a_obj.cells;
                    var getId = y[0].innerHTML;
                    document.getElementById("editid_C").value = getId;
                    a_obj.cells(i).style.color = a_color;
                }
            }
            function callservlet() {
                document.getElementsByName('toservlet')[0].submit();
            }
        </script>
    </body>
</html>
