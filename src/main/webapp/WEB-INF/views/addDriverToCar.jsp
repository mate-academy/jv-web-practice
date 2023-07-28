
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a car to a driver page</title>
</head>
<body>
<h2>Add a driver to a car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label for="car_id">Car id:</label>
    <input type="text" id="car_id" name="car_id" required>
    <br>
    <label for="driver_id">Driver id:</label>
    <input type="number" id="driver_id" name="driver_id" required>
    <br>
    <input type="submit" value="Confirm">
</form>
</body>
</html>
