<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add drivers to car</title>
</head>
<body>
<h1>Add drivers to car</h1>
<form method="post" action="${pageContext.request.contextPath}/add_driver_car">
    Car id <input type="number" name="car_id" required><br>
    Driver id <input type="number" name="driver_id" required><br>
    <button type="submit">Save</button>
</form>
</body>
</html>
