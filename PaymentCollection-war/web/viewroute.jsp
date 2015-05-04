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
                    <li><a href="ViewPayment">Payment Details</a></li>
                    <li><a href="changepassword.jsp">Change Password</a></li>
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
                                    <th>Route Id</th>
                                    <th>Route Name</th>
                                    <th>City</th>
                                </tr>
                                <r:forEach var="route" items="${requestScope['routeList']}">
                                    <tr onclick="myFunction(this, '#c9cc99', 'cc3333');">
                                        <td>${route.id}</td>
                                        <td>${route.r_name}</td>
                                        <td>${route.city}</td>                                        
                                    </tr>
                                </r:forEach>
                            </table>
                        </div>
                    </center>

                    <div id="content_lower_form">
                        <center>
                            <form name="toservlet" action="AddRoute" method="POST">
                                <input type="submit" name="previous" class="btn-style" value="Previous">
                                <input type="submit" name="next" class="btn-style" value="Next"><br><br>

                                <input type="submit" name="add" class="btn-style" value="Add Route">
                                <button type="submit" id="editid_U" class="btn-style" name="update"
                                        value="update" onclick="callservlet();">Update Route</button>
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
//                alert("Section row index is: " + el.sectionRowIndex);
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
                    document.getElementById("editid_U").value = getId;
                    //alert("Section row index is: " + y[0].innerHTML);
                    a_obj.cells(i).style.color = a_color;
                }
            }
            function callservlet() {
                document.getElementsByName('toservlet')[0].submit();
            }
        </script>
    </body>
</html>
