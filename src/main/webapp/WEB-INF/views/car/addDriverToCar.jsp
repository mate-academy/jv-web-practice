<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id <input type="text" name="driverId" placeholder="type driver id"><br>
    Car id <input type="text" name="carId" placeholder="type car id"><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>
