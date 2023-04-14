<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Update Driver</title>
</head>

<body>
<h2>Update Driver</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/update?${driver.id}">
    <label for="driver_id">ID</label><br>
    <input type="text" id="driver_id" name="driver_id" readonly="true" value="${driver.id}"><br>
    <label for="driver_name">Name</label><br>
    <input type="text" id="driver_name" name="driver_name" value="${driver.name}"><br>
    <label for="license_number">License number</label><br>
    <input type="text" id="license_number" name="license_number" value="${driver.licenseNumber}"><br><br>
    <input type="submit" value="Save">
    <input type="button" value="Return" onclick="history.back()">
</form>
</body>
</html>
