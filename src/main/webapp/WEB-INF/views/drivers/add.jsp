<%--
  Created by IntelliJ IDEA.
  User: angel
  Date: 4/29/2022
  Time: 9:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a driver to the car</title>
</head>
<body>
<h1>Add a driver to the car</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    CAR'S ID<input type="number" name="car_id"><br>
    DRIVER'S ID<input type="number" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
