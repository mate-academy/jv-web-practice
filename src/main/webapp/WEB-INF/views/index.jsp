<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
    <h1>Welcome to taxi service</h1>
    <h2>Menu:</h2>
    <p><a href="${pageContext.request.contextPath}/drivers/create">Create driver</a></p>
    <p><a href="${pageContext.request.contextPath}/drivers">Show all drivers</a></p>
    <p><a href="${pageContext.request.contextPath}/manufacturers/create">Create manufacturer</a></p>
    <p><a href="${pageContext.request.contextPath}/cars/create">Create car</a></p>
    <p><a href="${pageContext.request.contextPath}/cars/add/driver">Add driver to car</a></p>
</body>
</html>
