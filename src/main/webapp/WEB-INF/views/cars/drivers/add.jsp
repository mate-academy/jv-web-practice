<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1> Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    DriverId <input type="number" name="driverId"><br>
    CarId <input type="number" name = "carId"><br>
    <button type="submit"> Confirm </button>
</form>
</body>
</html>
