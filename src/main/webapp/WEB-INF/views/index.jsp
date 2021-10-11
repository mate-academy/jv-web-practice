<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi main page</title>
</head>
<body>
<h1>Welcome to our taxi</h1>
<a href="${pageContext.request.contextPath}/drivers/add">Add driver</a><br><br>
<a href="${pageContext.request.contextPath}/drivers/all">Get all drivers</a><br><br>
<a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer</a><br><br>
<a href="${pageContext.request.contextPath}/manufacturers/all">Get all manufacturers</a><br><br>
<a href="${pageContext.request.contextPath}/cars/add">Add car</a><br><br>
<a href="${pageContext.request.contextPath}/cars/all">Get all cars</a><br><br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a>
</body>
</html>
