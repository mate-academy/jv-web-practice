<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver to car</title>
</head>
<body>
<h1>Please specify car ID and driver ID</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car ID <input type="number" name="car_id"><br>
    Driver ID <input type="number" name="driver_id"><br>
    <button type="submit">Appoint</button>
</form>
<a href="${pageContext.request.contextPath}/cars/all">how all cars</a>
<a href="${pageContext.request.contextPath}/drivers/all">Show all drivers</a>
</body>
</html>
