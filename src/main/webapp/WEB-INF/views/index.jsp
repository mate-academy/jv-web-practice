<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h4>Your request was successful!</h4>

<h2>If you want to continue, please choose the option below:</h2>
<td><a href="${pageContext.request.contextPath}/cars/allCars">View all cars</a></td><br>
<td><a href="${pageContext.request.contextPath}/cars/create">Create s new car</a></td><br>
<td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to the car</a></td><br>

<td><a href="${pageContext.request.contextPath}/manufacturers/allManufacturers">View all manufacturers</a></td><br><br>
<td><a href="${pageContext.request.contextPath}/manufacturers/create">Create a new manufacturers</a></td><br><br>

<td><a href="${pageContext.request.contextPath}/drivers/allDrivers">View all drivers</a></td><br>
<td><a href="${pageContext.request.contextPath}/drivers/create">Create a new driver</a></td><br><br>

</body>
</html>
