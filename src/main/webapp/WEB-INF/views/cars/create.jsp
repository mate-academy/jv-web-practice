<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <label for="model">Model:</label>
    <input type="text" id="model" name="model" required><br>
    <label for="manufacturer_id">Manufacturer_id:</label>
    <input type="text" id="manufacturer_id" name="manufacturer_id" required><br>
    <input type="submit" value="create">
</form>
</body>
</html>
