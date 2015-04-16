<%-- 
    Document   : viewsalesman
    Created on : Apr 7, 2015, 3:28:27 PM
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
                    <h1>Salesman List</h1>
                </div>

                <div id="content_lower">

                    <div id="CSS_Table_Example" >

                        <table style="width:930px;height:470px;">
                            <tr> 
                                <th>Salesman Id</th>
                                <th>Salesman Name</th>
                                <th>Phone Number</th>
                                <th>Email Id</th>
                                <th>Address</th>
                                <th>Date Of Joining</th>
                            </tr>
                            <s:forEach var="salesman" items="${requestScope['salesmanList']}">
                                <tr onclick="myFunction(this, '#c9cc99', 'cc3333');">
                                    <td>${salesman.id}</td>
                                    <td>${salesman.s_name}</td>
                                    <td>${salesman.s_phonenumber}</td>
                                    <td>${salesman.s_emailid}</td>
                                    <td>${salesman.s_address}</td>
                                    <td>${salesman.s_dateofjoining}</td>
                                </tr>
                            </s:forEach>
                                <!--<a href="UpdateSalesman?sid=${salesman.id}">${salesman.s_name}</a>-->
                        </table>
                    </div>

                    <div id="content_lower_form">
                        <center>
                            <form name="toservlet" action="AddSalesman" method="POST">
                                <input type="submit"  name="previous" class="btn-style" value="Previous">
                                <input type="submit" name="next" class="btn-style" value="Next"><br><br>
                                <input type="submit" name="add" class="btn-style" value="Add Salesman">
                                <button type="submit" id="editid_U" class="btn-style" name="update" value="update" onclick="callservlet();">
                                    Update Salesman Details</button>
                                <button type="submit" id="editid_R" class="btn-style" name="showroute" value="update" onclick="callservlet();">
                                    Show Routes</button>
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
                for (i = 0; i < a_obj.cells.length; i++){
                    var y = a_obj.cells;
                    var getId = y[0].innerHTML;
                    document.getElementById("editid_U").value = getId;
                    document.getElementById("editid_R").value = getId;
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
