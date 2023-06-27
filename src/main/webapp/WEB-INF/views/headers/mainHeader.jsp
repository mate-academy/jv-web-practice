<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu</title>
</head>
<body>
<p align="center">
    <a href="${pageContext.request.contextPath}/drivers/add">Create a driver</a>
    <span> | </span>
    <a href="${pageContext.request.contextPath}/manufacturers/add">Create a manufacturer</a>
    <span> | </span>
    <a href="${pageContext.request.contextPath}/cars/add">Create a car</a>
    <span> | </span>
    <a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a>
</p>
<p align="center">
    <a href="${pageContext.request.contextPath}/drivers">All drivers</a>
    <span> | </span>
    <a href="${pageContext.request.contextPath}/manufacturers">All manufacturers</a>
    <span> | </span>
    <a href="${pageContext.request.contextPath}/cars">All cars</a>
</p>
<hr/>
</body>
</html>
