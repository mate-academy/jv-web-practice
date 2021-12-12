<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please, fill the form below to add a driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/driver/car/add">
    Car ID <input type="number" name = "car_id"><br>
    Driver ID <input type="number" name = "driver_id"><br>
    <button type="submit">Add driver</button>
</form>
<br/>
</body>
</html>
