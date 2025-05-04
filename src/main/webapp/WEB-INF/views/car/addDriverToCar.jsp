<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver to car</title>
</head>
<body>
<h1>Enter the data to add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    CAR ID <input type="number" name = "car_id" required><br>
    DRIVER ID <input type="number" name = "driver_id" required><br>
    <button type="submit">Add driver to car</button>
</form>
<br/>
</body>
</html>
