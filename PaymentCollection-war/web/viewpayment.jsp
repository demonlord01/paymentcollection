<%-- 
    Document   : viewpayment
    Created on : Apr 7, 2015, 4:18:26 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p" %>
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
                    <h1>Payment List</h1>
                </div>

                <div id="content_lower">

                    <div id="CSS_Table_Example" >

                        <table style="width:930px;height:470px;">
                            <tr>
                                <td>Payment Id</td>
                                <td>Customer</td>
                                <td>Salesman</td>
                                <td>Payment Received</td>
                                <td>Payment Due</td>
                                <td>Location</td>
                                <td>Date Of Payment</td>
                            </tr>
                            <p:forEach var="payment" items="${requestScope['paymentList']}">
                                <tr onclick="myFunction(this, '#c9cc99', 'cc3333');">
                                    <td>${payment.id}</td>
                                    <td>${payment.p_customer.c_name}</td>
                                    <td>${payment.p_salesman.s_name}</td>
                                    <td>${payment.p_recievepayment}</td>
                                    <td>${payment.p_recievepayment}</td>
                                    <td>${payment.p_gpslocation}</td>
                                    <td>${payment.p_date}</td>
                                </tr>
                            </p:forEach>
                        </table>
                    </div>

                    <div id="content_lower_form">
                        <center>
                            <form name="toservlet" action="AddPayment" method="POST">
                                <input type="button" name="previous" class="btn-style" value="Previous">
                                <input type="button" name="next" class="btn-style" value="Next"><br><br>
                                <input type="submit" name="add" class="btn-style" value="Add Payment">
                                <button type="submit" id="editid_U" class="btn-style" name="updatepaymentdetails"
                                        value="updatepaymentdetails" onclick="callservlet();">
                                    Update Payment Details</button>
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
                    document.getElementById("editid_U").value = getId;
                    a_obj.cells(i).style.color = a_color;
                }
            }
            function callservlet() {
                document.getElementsByName('toservlet')[0].submit();
            }
        </script>
    </body>
</html>
