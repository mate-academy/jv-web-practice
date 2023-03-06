<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add driver to car</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<h1>Add driver to car</h1>
<form action="${pageContext.request.contextPath}/cars/drivers/add" method="post">
    <label for="driver_id">Driver id:</label>
    <input type="text" id="driver_id" name="driver_id" required><br>
<%--    <label for="name">Name:</label>--%>
<%--    <input type="name" id="name" name="name" required><br>--%>
<%--    <label for="licenseNumber">License number:</label>--%>
<%--    <input type="Number" id="licenseNumber" name="licenseNumber" required><br>--%>
    <label for="car_id">Car id:</label>
    <input type="text" id="car_id" name="car_id" required><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
