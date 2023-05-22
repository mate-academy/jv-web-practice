<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WEB-PRACTICE</title>
</head>
<body>
<h1>EE web practice</h1>
<a href="${pageContext.request.contextPath}/drivers/add">creating a driver</a><br>
<a href="${pageContext.request.contextPath}/drivers">display  all drivers with ability to delete certain driver</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/add">creating a manufacturer</a><br>
<a href="${pageContext.request.contextPath}/manufacturers">display all manufacturers with ability to delete certain manufacturer</a><br>
<a href="${pageContext.request.contextPath}/cars/add">creating a car</a><br>
<a href="${pageContext.request.contextPath}/cars">Display all cars (with manufacturer and drivers) with ability to delete a certain car</a><br>
</body>
</html>
