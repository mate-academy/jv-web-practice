<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h2>Add driver to car:</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver ID <input type="text" name="driver_id"><br>
    Car ID <input type="text" name="car_id">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
