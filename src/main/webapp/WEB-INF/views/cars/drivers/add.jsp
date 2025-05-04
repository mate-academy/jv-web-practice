<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Add driver to car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <label>
    <input type="number" name="car_id">
</label><br>
    Driver id <label>
    <input type="number" name="driver_id">
</label><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
