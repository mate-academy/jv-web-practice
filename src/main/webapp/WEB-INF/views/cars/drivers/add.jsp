<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please add a driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label>Car id:</label><br>
    <input type="text" name="car_id"><br>
    <label>Driver id:</label><br>
    <input type="text" name="driver_id"><br>
    <button type="submit">Add</button><br><br><br>
    <a href="${pageContext.request.contextPath}/drivers/all">Show all drivers</a><br>
    <a href="${pageContext.request.contextPath}/cars/all">Back to all cars</a><br>
    <a href="${pageContext.request.contextPath}/">Back to main page</a>
</form>
</body>
</html>
