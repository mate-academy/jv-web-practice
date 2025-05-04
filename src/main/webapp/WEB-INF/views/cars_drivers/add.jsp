<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car ID<input type="number" name="car_id"><br>
    Driver ID<input type="number" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
