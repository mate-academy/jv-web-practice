<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
</head>
<body>
<h1>Select an action!</h1><br>
<form method="get" action="${pageContext.request.contextPath}/drivers/add">
    <button type="submit">Add new driver</button>
</form><br>
<form method="get" action="${pageContext.request.contextPath}/drivers">
    <button type="submit">Show all drivers</button>
</form><br>
<form method="get" action="${pageContext.request.contextPath}/manufacturers/add">
    <button type="submit">Add Manufacturer</button>
</form><br>
<form method="get" action="${pageContext.request.contextPath}/manufacturers">
    <button type="submit">Show all manufacturers </button>
</form><br>
<form method="get" action="${pageContext.request.contextPath}/cars/add">
    <button type="submit">Add car</button>
</form><br>
<form method="get" action="${pageContext.request.contextPath}/cars">
    <button type="submit">Show all cars </button>
</form><br>
<form method="get" action="${pageContext.request.contextPath}/cars/drivers/add">
    <button type="submit">Add driver to car</button>
</form><br>
</body>
</html>
