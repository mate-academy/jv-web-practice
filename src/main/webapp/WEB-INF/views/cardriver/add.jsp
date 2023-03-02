<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/carsdrivers/add">
    Car ID    <input type="number" name="car_id" required="required"><br>
    Driver ID <input type="number" name="driver_id" required="required"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>