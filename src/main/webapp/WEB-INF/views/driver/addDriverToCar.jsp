<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Fill in the fields to add a driver to the car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car ID <input type="number" name = "car_id"><br>
    Driver ID <input type="number" name = "driver_id"><br>
    <button type="submit">Add driver</button>
</form>
<br/>
</body>
</html>
