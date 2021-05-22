<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Enter car id, driver id and confirm to add the driver to the car:</h1>
<form action="${pageContext.request.contextPath}/cars/drivers/add" method="post">
    Car ID: <input type="number" name="car_id" required><br><br>
    Driver ID: <input type="number" name="driver_id" required><br><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
