<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver's Id <input type="number" name="driver_id"><br>
    Car's id <input type="number" name="car_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>