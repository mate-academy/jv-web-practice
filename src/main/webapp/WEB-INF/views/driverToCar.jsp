<%--
  Created by IntelliJ IDEA.
  User: Sergiy
  Date: 18.05.2023
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add Driver to Car</title>
    </head>
    <body>
        <form method="post" action="/driverToCar">
            Car id <input type="text" name="carId"><br>
            Driver id <input type="text" name="driverId"><br>
            <button type="submit">Create</button>
        </form>
    </body>
</html>
