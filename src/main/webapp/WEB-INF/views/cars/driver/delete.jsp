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
<form method="post" action="${pageContext.request.contextPath}/car/driver/delete">
    Car ID: <input type="number" name="carId" required><br>
    Driver ID: <input type="number" name="driverId" required><br>
    <button type="submit">Delete driver from car</button>
</form>
</body>
</html>
