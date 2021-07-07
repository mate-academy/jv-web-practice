<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Enter driver id and car id</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver's ID <input type="number" name="driver_id" required><br>
    Car's ID = <input type="numebr" name="car_id" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
