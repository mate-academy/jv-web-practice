<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete driver from car</title>
</head>
<body>
<h1>Enter car id, and driver id</h1>
<form method="get" action="${pageContext.request.contextPath}/main">
    Car id<input type="text" name="car_id" required><br>
    Driver id<input type="text" name="driver_id" required><br>
    <button type="submit">Delete relation</button>
</form>
