<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Start page</title>
</head>
<body>
<h1>Welcome to car catalogue</h1>
<p><a href="${pageContext.request.contextPath}/manufacturers/add">Create a new manufacturer</a></p>
<p><a href="${pageContext.request.contextPath}/drivers/add">Create a new driver</a></p>
<p><a href="${pageContext.request.contextPath}/cars/add">Create a new car</a></p>
<p><a href="${pageContext.request.contextPath}/manufacturers/">Display all manufacturers</a></p>
<p><a href="${pageContext.request.contextPath}/drivers/">Display all drivers</a></p>
<p><a href="${pageContext.request.contextPath}/cars/">Display all cars</a></p>
</body>
</html>
