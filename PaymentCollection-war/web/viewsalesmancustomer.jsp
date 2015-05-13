<%-- 
    Document   : viewsalesmancustomer
    Created on : Apr 7, 2015, 4:18:11 PM
    Author     : Vaibhav Bhagat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Collection</title>
         <link href="css/jquery.dataTables.css" type="text/css" rel="stylesheet">
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
                    <li><a href="ViewPaymentDetails">Payment Details</a></li>
                    <li><a href="RecievePayment">Receive Payment</a></li>
                    <li><a href="salesmanchangepassword.jsp">Change Password</a></li>
                    <li><a href="Logout">Logout</a></li>
                </ul>
            </div>
              <div class="clear"></div>
            <div id="content">

                <div id="content_upper">
                    <h1>Customer List</h1>
                </div>

                <div id="content_lower">

                    <div id="CSS_Table_Example" >

                        <table id="datatableExm" style="width:930px;height:450px;">
                            <thead>
                            <tr> 
                                <th>Customer Id</th>
                                <th>Customer Name</th>
                                <th>Phone Number</th>
                                <th>Email Id</th>
                                <th>Route</th>
                                <th>Address</th>
                                <th>Due Payment</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="customer" items="${requestScope['customerList']}">
                                <tr onclick="myFunction(this, 'silver', 'cc3333');">
                                    <td>${customer.id}</td>
                                    <td>${customer.c_name}</td>
                                    <td>${customer.c_phonenumber}</td>
                                    <td>${customer.c_emailid}</td>
                                    <td>${customer.c_route.r_name}</td>
                                    <td>${customer.c_address}</td>
                                    <td>${customer.c_duepayment}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <div id="content_lower_form">
                        <center>
                            <form name="toservlet" action="ViewPaymentDetails" method="POST">
                              <!--  <input type="button" name="previous" class="btn-style" value="Previous">
                                <input type="button" name="next" class="btn-style" value="Next"><br><br>-->
                                <button type="submit" id="editid_C" class="btn-style" name="viewcustomerpayments"
                                        value="update" onclick="callservlet();">View Customer Payments</button>
                            </form>
                        </center>
                    </div>
                      <div class="clear"></div>
                </div> 
                  <div class="clear"></div>               
            </div>
              <div class="clear"></div>
        </div>
          <script type="text/javascript" src="js/jquery-1.11.1.min.js">
        </script>
        <script type="text/javascript" src="js/jquery.dataTables.min.js">
        </script>
        <script type="text/javascript">
              $(document).ready(function(){
                $("#datatableExm").dataTable();
            });
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
