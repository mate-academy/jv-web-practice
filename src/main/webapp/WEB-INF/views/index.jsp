<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My taxi</title>
</head>
<body>
<h1>Hello, it's your taxi app!</h1>
<td><a href="${pageContext.request.contextPath}/cars/add">Create car</a></td><br>
<td><a href="${pageContext.request.contextPath}/cars">Get all cars</a></td><br>
<td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></td><br>
<td><a href="${pageContext.request.contextPath}/manufacturers/add">Create manufacturers</a></td><br><br>
<td><a href="${pageContext.request.contextPath}/manufacturers/all">Get all manufacturers</a></td><br><br>
<td><a href="${pageContext.request.contextPath}/drivers/add">Create driver</a></td><br><br>
<td><a href="${pageContext.request.contextPath}/drivers">Create all drivers</a></td><br>
</body>
</html>
