<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Manufacturer driver id<input type="text" name="driver_id" required><br>
    Manufacturer car id <input type="text" name="car_id" required><br>
    <button type="submit">Add</button>
</form>
</body>
</html>