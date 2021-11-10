<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars&Drivers</title>
</head>
<body>
<h1>Please the form bellow</h1>
<form method ="post" action="${pageContext.request.contextPath}/cars_drivers">
    Car id <input type="text" name="car_id">
    Driver id <input type="text" name="driver_id"><br>
    <button type="submit">Apply</button>
</form>
</body>
</html>
