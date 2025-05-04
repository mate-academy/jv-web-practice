<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add drivers</title>
</head>
<body>
    <h1>add drivers to car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/addDrivers">
        Driver ID <input type="text" name="driver_id" required><br>
        Car ID <input type="text" name="car_id" required><br>
        <button type="submit">Create</button>
    </form>
</body>
<footer>
    <a href="${pageContext.request.contextPath}/cars">To cars</a>
    <a href="${pageContext.request.contextPath}/drivers">To drivers</a>
</footer>
</html>
