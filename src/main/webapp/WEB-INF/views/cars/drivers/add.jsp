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
<form method="get" action="${pageContext.request.contextPath}/cars/all">
    <button type="submit">Show all cars</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/drivers/all">
    <button type="submit">Show all drivers</button>
</form>
</body>
</html>
