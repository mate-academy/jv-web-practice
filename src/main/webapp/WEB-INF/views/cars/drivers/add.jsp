<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a driver to the car</title>
</head>
<body>
<h1>Add a driver to the car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    CAR'S ID<input type="number" name="car_id"><br>
    DRIVER'S ID<input type="number" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
