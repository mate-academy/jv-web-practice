<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Choose the driver and car by id</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/addDriverToCar">
    Car ID <input type="text" name="car_id"><br>
    Driver ID <input type="text" name="driver_id"><br>
    <button type="submit">Add</button>
    <h2>If you want crate driver or car</h2>

    <button type="button" name="return" ><a href="${pageContext.request.contextPath}/cars/createCar">Create new car</a></button>
    <button type="button" name="return" ><a href="${pageContext.request.contextPath}/drivers/createDriver">Create new driver</a></button>
</form>
</body>
</html>
