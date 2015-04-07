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
                    <li><a href="index.jsp">Home</a></li>
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
                        <h1>Payment List</h1>
                    </div>
                    <div id="content_left_lower">
                        <table>
                            <tr>
                                <th>Id</th>
                                <th>Payment due</th>
                                <th>Route</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>2000</td>
                                <td>Amritsar</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>5000</td>
                                <td>Amritsar</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>2000</td>
                                <td>Chandigarh</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>4000</td>
                                <td>Chandigarh</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>25000</td>
                                <td>Chandigarh</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>5500</td>
                                <td>Amritsar</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>7000</td>
                                <td>Amritsar</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>1000</td>
                                <td>Chandigarh</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>1000</td>
                                <td>Amritsar</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>4800</td>
                                <td>Chandigarh</td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td>5800</td>
                                <td>Amritsar</td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>6800</td>
                                <td>Chandigarh</td>
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
                        <h1>Payment Details</h1>
                    </div>

                    <div id="content_right_lower">

                        <form>
                            <font>
                            <br>
                            Payment Id<input type="text" name="Payment Id" style="margin-left:65px;"></font>
                            <br><br>
                            <font>Payment due<input type="text" name="Payment due" style="margin-left:54px;"></font>
                            <br><br>
                            <font>Route 
                            <select name="route" style="margin-left:105px;">
                                <option value="route1">Amritsar</option>
                                <option value="route2">Chandigarh</option>
                            </select></font>
                            <br><br>
                            <font>Salesman<input type="text" name="Salesman" style="margin-left:82px;"></font>
                            <br><br>
                            <font>Customer<input type="text" name="Customer" style="margin-left:82px;"></font>
                            <br><br>
                            <font>Receive Payment<input type="text" name="Receive Payment" style="margin-left:25px;"></font>
                            <br><br>
                            <font>Date of payment<input type="text" name="Date of payment" style="margin-left:29px;"></font>
                            <br><br>

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