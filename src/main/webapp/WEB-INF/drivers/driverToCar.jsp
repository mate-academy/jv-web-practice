<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TitAdd driver to car</title>
</head>
<body>
<h1>Add driver to car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    CarId <input type="number" name="car_id"><br>
    DriverId <input type="number" name="driver_id">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
