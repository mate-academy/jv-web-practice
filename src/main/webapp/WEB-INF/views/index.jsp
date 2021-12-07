<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Driver service</h1>
<a href="${pageContext.request.contextPath}/drivers">Display all drivers</a><br>
<a href="${pageContext.request.contextPath}/drivers/create">Create driver</a><br><br>
<h1>Maker service</h1>
<a href="${pageContext.request.contextPath}/makers">Display all makers</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/create">Create maker</a><br><br>
<h1>Car service</h1>
<a href="${pageContext.request.contextPath}/cars">Display all cars</a><br>
<a href="${pageContext.request.contextPath}/cars/create">Create car</a><br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a>
</body>
</html>
