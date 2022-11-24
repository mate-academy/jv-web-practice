<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver o car</title>
</head>
<body>
<h1>Add driver to car by id form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver ID: <label>
    <input type="text" name="driver_Id">
</label><br>
    Car ID: <label>
    <input type="text" name="car_Id">
</label><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
