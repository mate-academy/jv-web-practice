<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver to car</title>
</head>
<body>
<h1>For add new Driver to Car fill in the forms below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add/driver">
    Car's id <input type="number" name="car_id"><br>
    Driver's id <input type="number" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
