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
                    <li><a href="SalesmanServlet">Salesman</a></li>
                    <li><a href="third.jsp">Customer</a></li>
                    <li><a href="fourth.jsp">Route</a></li>
                    <li><a href="fifth.jsp">Payment Details</a></li>
                    <li><a href="sixth.jsp">Change Password</a></li>
                    <li><a href="LogoutServlet">Logout</a></li>
                </ul>
            </div>

            <div id="content">

                <div id="content_left">
                    <div id="content_left_upper">
                        <h1>Route List</h1>
                    </div>
                    <div id="content_left_lower">
                        <table>
                            <tr>
                                <th>Id</th>
                                <th>Route Name</th>
                                <th>City</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Sector 17</td>
                                <td>chandigarh</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Sector 22</td>
                                <td>Chandigarh</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Sector 35</td>
                                <td>Chandigarh</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Sector 36</td>
                                <td>Chandigarh</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Green Avenue</td>
                                <td>Amritsar</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>Akaash Avenue</td>
                                <td>Amritsar</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>Ranjit Avenue</td>
                                <td>Amritsar</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>Sector 43</td>
                                <td>Chandigarh</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>Sector 34</td>
                                <td>Chandigarh</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Sector 52</td>
                                <td>Chandigarh</td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td>Sector 21</td>
                                <td>Chandigarh</td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>Green Avenue</td>
                                <td>Amritsar</td>
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
                        <h1>Route Details</h1>
                    </div>

                    <div id="content_right_lower">

                        <form>
                            <font>
                            <br>
                            Route Id<input type="text" name="Route Id" style="margin-left:63px;"></font>
                            <br><br>
                            <font>Route 
                            <select name="route" style="margin-left:78px;">
                                <option value="route1">Green Avenue</option>
                                <option value="route2">Sector 17</option>
                            </select></font>
                            <br><br>
                            <font>City<input type="text" name="Phone number" style="margin-left:96px;"></font>
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