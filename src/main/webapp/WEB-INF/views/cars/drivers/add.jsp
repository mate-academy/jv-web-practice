<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a driver to a car</title>
</head>
<body>
<h1>Please, enter car id and driver id</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="number" name="car_id" required><br>
    Driver id <input type="number" name="driver_id" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
