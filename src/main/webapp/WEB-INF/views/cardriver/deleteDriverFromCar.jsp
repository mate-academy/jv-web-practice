<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete driver from car</title>
</head>
<body>
<h1>Delete driver from car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/delete">
    Car id <input type="number" name="car_id"><br>
    Driver id <input type="number" name="driver_id"><br>
    <button type="submit">Delete</button>
</form>
</body>
</html>
