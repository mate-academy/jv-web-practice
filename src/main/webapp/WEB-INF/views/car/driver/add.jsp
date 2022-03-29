<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Driver and car :</h1>
<form method = "post" action = "${pageContext.request.contextPath}/cars/drivers/add">
    Driver ID : <input type = "number" required name = "driver_id"><br>
    <br>
    Car ID : <input type = "number" required name = "car_id"><br>
    <br>
    <button type = "submit">Add</button>
</form>
<br><a href="/index">To main</a>
</body>
</html>
