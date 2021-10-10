<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a Driver to a Car</title>
</head>
<body>
<h2>Please, fill the form below</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    DriverId<input type = "number" name = "driverId"> <br>
    CarId<input type="number" name="carId"><br>
    <button type="submit"> Submit </button>
</form>

<h3>If you want to see a list of drivers, please click below</h3>
<td><a href="${pageContext.request.contextPath}/drivers/allDrivers">View all drivers</a></td><br>
<h3>If you want to see a list of cars, please click below</h3>
<td><a href="${pageContext.request.contextPath}/cars/allCars">View all cars</a></td><br>
</body>
</html>
