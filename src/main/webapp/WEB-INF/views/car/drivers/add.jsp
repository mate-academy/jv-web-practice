<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Enter car id, driver id:</h1>
<form action="${pageContext.request.contextPath}/cars/driver/add" method="post">
    Car ID: <input type="number" name="car_id" required><br>
    Driver ID: <input type="number" name="driver_id" required><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>