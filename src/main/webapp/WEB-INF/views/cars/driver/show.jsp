<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/buttons.jsp" %>
    <br>
    <title>Drivers</title>
</head>
<body>
<h1>Drivers</h1>
<form method="post">
    Car ID: <input type="number" name="carId" required><br>
    Driver ID: <input type="number" name="driverId" required><br>
    <button type="submit" action="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</button>
    <button type="submit" action="${pageContext.request.contextPath}/cars/drivers/delete">Delete driver from car
    </button>
</form>
</body>
</html>
