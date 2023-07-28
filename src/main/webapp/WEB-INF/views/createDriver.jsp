<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver page</title>
</head>
<body>
<h3>Create a new driver</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label for="name">Model:</label>
    <input type="text" id="name" name="name" required>
    <br>
    <label for="license_number">License number:</label>
    <input type="text" id="license_number" name="license_number" required>
    <input type="submit" value="Confirm">
</form>
</body>
</html>
