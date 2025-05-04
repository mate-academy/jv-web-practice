<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add car</title>
</head>
<body>
<h1>creating a car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    car model <input type="text" name="model"><br>
    manufacturer ID <input type="number" name="manufacturer_id"><br>
    <button type="submit">Add car</button>
</form>
</form>
<form action="${pageContext.request.contextPath}/manufacturers/add">
    <button type="submit">Add manufacturer</button>
</form>
</body>
</html>
