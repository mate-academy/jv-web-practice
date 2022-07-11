<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>To add a driver to car fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car ID <input type="number" required name="car_id"><br>
    Driver ID <input type="number" required name="driver_id"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
