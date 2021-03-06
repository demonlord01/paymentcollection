<%-- 
    Document   : updatesalesman
    Created on : Apr 9, 2015, 5:47:45 PM
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
    </head>
    <body>
        <s:set value="${salesman.id}" var="id" scope="request"></s:set>
        <s:set value="${salesman.s_name}" var="name" scope="request"></s:set>
        <s:set value="${salesman.s_password}" var="password" scope="request"></s:set>
        <s:set value="${salesman.s_phonenumber}" var="phonenumber" scope="request"></s:set>
        <s:set value="${salesman.s_emailid}" var="emailid" scope="request"></s:set>
        <s:set value="${salesman.s_address}" var="address" scope="request"></s:set>
        <s:set value="${salesman.s_dateofjoining}" var="dateofjoining" scope="request"></s:set>
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

                    <center>
                        <form action="UpdateSalesman" method="POST">
                            <upper>
                                <h1>Salesman Details</h1>
                            </upper>

                            <lower>
                                <br><br>
                                <input type="text" name="salesmanid" hidden style="margin-left:38px;" value="<s:out value="${id}"/>">
                                <font>Salesman Name<input type="text" name="salesmanName"  style="margin-left:38px;" value="<s:out value="${name}"/>"></font>
                            <br><br>
                            <font>Salesman Password<input type="text" name="salesmanPassword" r style="margin-left:8px;" value="<s:out value="${password}"/>"></font>                            
                            <br><br>
                            <font>Phone Number<input type="number" name="salesmanPhoneNumber"  style="margin-left:45px;" value="<s:out value="${phonenumber}"/>"></font>
                            <br><br>
                            <font>Email id<input type="email" name="salesmanEmailid"  style="margin-left:95px;" value="<s:out value="${emailid}"/>"></font>
                            <br><br>
                            <font>Address<input type="text" name="salesmanAddress" style="margin-left:98px;" value="<s:out value="${address}"/>"></font>                            
                            <br><br>
                            <font>Date Of Joining<input type="date" name="salesmanDateOfJoining" style="margin-left:38px;" value="<s:out value="${dateofjoining}"/>"></font>
                            <br><br><br>
                            <font style="margin-left:120px;">
                            <input type="submit" name="update" class="btn-style" value="Update">
                            <input type="submit" name="reset" class="btn-style" value="Reset">
                            </font>
                        </lower>
                    </form>
                </center>
            </div>
        </div>
    </body>
</html>
