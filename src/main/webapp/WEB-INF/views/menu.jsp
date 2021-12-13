<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu</title>
</head>
<body>
<h2>Menu</h2>
<ul>
    <li><a href="${pageContext.request.contextPath}/cars/all">Display all cars</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/add">Add car</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/driver/add">Add driver to car</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers/add">Add driver</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers/all">Display all drivers</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers/all">Display all manufacturers</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer</a></li>
</ul>
</body>
</html>
