<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Fill in the form below:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver ID: <input type="number" name="driver_id"><br>
    Car ID: <input type="number" name="car_id"><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>