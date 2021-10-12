<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/driver/add">
    Car's ID <input type="number" name="car_id"><br>
    Driver's ID <input type="number" name="driver_id">
    <button type="submit">Add</button>
</form>
</body>
</html>
