<%--
  Created by IntelliJ IDEA.
  User: PRO
  Date: 21.09.2022
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    CarId <input type="number" name="car_id"><br>
    DriverId <input type="number" name="driver_id"><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
