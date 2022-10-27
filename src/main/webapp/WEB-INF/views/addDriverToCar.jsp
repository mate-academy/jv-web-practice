<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver to Car</title>
</head>
<body>
<h1>Create driver to Car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    DriverId <input type="number" name="driver_id"><br>
    CarId <input type="number" name="car_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
