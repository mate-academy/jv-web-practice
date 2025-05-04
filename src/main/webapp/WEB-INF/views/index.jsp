<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
</head>
<body>
<h1>Please, choose the option</h1>
<a href="${pageContext.request.contextPath}/cars/add">Create new car</a></p>
<a href="${pageContext.request.contextPath}/cars/all">Display all cars</a></p>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add new driver to the car</a></p>
<a href="${pageContext.request.contextPath}drivers/add">Add new driver</a></p>
<a href="${pageContext.request.contextPath}drivers/all">Display all drivers</a></p>
<a href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacturer</a></p>
<a href="${pageContext.request.contextPath}/manufacturers/all">Display all manufacturers</a></p>
</body>
</html>
