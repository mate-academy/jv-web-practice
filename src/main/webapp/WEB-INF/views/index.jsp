<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Taxi</h1>
<ul>
    <li><a href="${pageContext.request.contextPath}/drivers/add">Create driver</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturer/add">Create a manufacturer</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/add">Create a car</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></li>
</ul>
</body>
</html>
