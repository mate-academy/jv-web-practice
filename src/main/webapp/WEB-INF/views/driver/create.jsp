<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h1>Driver was created:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>
    <label for="licenseNumber">License Number:</label>
    <input type="text" id="licenseNumber" name="licenseNumber" required><br>
    <input type="submit" value="Create">
</form>
</body>
</html>
