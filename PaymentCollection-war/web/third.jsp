<html>
    <head>
        <link href="css/stylesheet11.css" type="text/css" rel="stylesheet">

    </head>

    <body>
        <div id="wrapper">

            <div id="header">
                <h1>Payment Collection</h1>
            </div>


            <div id="navigation_inner">
                <ul>
                    <li><a href="indrx.jsp">Home</a></li>
                    <li><a href="SalesmanServlet">Salesman</a></li>
                    <li><a href="third.jsp">Customer</a></li>
                    <li><a href="fourth.jsp">Route</a></li>
                    <li><a href="fifth.jsp">Payment Details</a></li>
                    <li><a href="sixth.jsp">Change Password</a></li>
                    <li><a href="first.jsp">Logout</a></li>
                </ul>
            </div>


            <div id="content">

                <div id="content_left">
                    <div id="content_left_upper">
                        <h1>Customer List</h1>
                    </div>
                    <div id="content_left_lower">
                        <table>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Route</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Shweta</td>
                                <td>Sector 22,Chandigarh</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Mrinali</td>
                                <td>Sector 22,Chandigarh</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Arpit</td>
                                <td>Sector 17,Chandigarh</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Dhruv</td>
                                <td>Green Avenue,Amritsar</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Harish</td>
                                <td>Sector 17,Chandigarh</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>Amrit</td>
                                <td>Sector 21,Chandigarh</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>Anil</td>
                                <td>Sector 21,Chandigarh</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>Shreya</td>
                                <td>Green Avenue,Amritsar</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>Anoop</td>
                                <td>Sector 43,Chandigarh</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Harshad</td>
                                <td>Green Avenue,Amritsar</td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td>Hemant</td>
                                <td>Sector 36,Chandigarh</td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>Himani</td>
                                <td>Sector 43,Chandigarh</td>
                            </tr>
                        </table>
                        <center>
                            <form>
                                <input type="button" value="Previous">
                                <input type="button" value="Next">
                            </form>
                        </center>
                    </div>
                </div>
                <div id="content_right">
                    <div id="content_right_upper">
                        <h1>Customer Details</h1>
                    </div>

                    <div id="content_right_lower">

                        <form>
                            <font>
                            <br>
                            Customer Id<input type="text" name="Customer Id" style="margin-left:65px;"></font>
                            <br><br>
                            <font>Customer Name<input type="text" name="Customer Name" style="margin-left:38px;"></font>
                            <br><br>
                            <font>Phone Number<input type="text" name="Phone number" style="margin-left:46px;"></font>
                            <br><br>
                            <font>Email id<input type="text" name="Emailid" style="margin-left:96px;"></font>
                            <br><br>
                            <font>Address<input type="text" name="Address" style="margin-left:98px;"></font>
                            <br><br>
                            <font>Route 
                            <select name="route" style="margin-left:112px;">
                                <option value="route1">Green Avenue</option>
                                <option value="route2">Sector 17</option>
                            </select></font>
                            <br>
                            <font>Payment<input type="text" name="Payment" style="margin-left:94px;"></font>
                            <br><br><br>
                            <font style="margin-left:120px;">
                            <input type="button" value="Add">
                            <input type="button" value="Update">
                            <input type="button" value="Delete">
                            </font>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>