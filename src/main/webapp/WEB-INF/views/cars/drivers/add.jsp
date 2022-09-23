<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Enter id:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id <input type="number" name="driver_id"><br>
    Car id <input type="number" name="car_id"><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
