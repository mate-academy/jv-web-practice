<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Input driver of car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add" >
    Id car <input type="number" name="car_id"><br>
    Id driver <input type="number" name="driver_id"><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>
