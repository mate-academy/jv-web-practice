<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Enter the driver for the car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label>Car ID</label><br>
    <label>
        <input type="number" name="car_id">
    </label><br>
    <label>Driver ID</label><br>
    <label>
        <input type="number" name="driver_id">
    </label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
