<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
    <h3>Add new driver to Car</h3>
    <p>Fill in forms below:</p>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car's id <input type="text" name="car_id"><br>
        Driver's id <input type="text" name="driver_id"><br>
        <button type="submit">Confirm</button>
    </form>
    <a href="${pageContext.request.contextPath}/cars/all">Show all cars</a><br>
    <a href="${pageContext.request.contextPath}/drivers/all">Show all drivers</a><br>
    <a href="${pageContext.request.contextPath}/index">return to main page</a>
</body>
</html>
