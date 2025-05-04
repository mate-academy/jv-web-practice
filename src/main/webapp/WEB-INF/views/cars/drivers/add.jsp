<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add driver to car</title>
</head>
<body>
<h1>adding driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Driver ID <input type="number" name="driver_id"><br>
        Car ID <input type="number" name="car_id"><br>
        <br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
