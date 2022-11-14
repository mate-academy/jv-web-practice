<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index page</title>
</head>
<body>
<h1>Control page</h1>
<a href="${pageContext.request.contextPath}/manufacturers">See all manufacturers(you can also delete them here)</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/create">Create manufacturer</a><br>
<a href="${pageContext.request.contextPath}/drivers">See all drivers(you can also delete them here)</a><br>
<a href="${pageContext.request.contextPath}/drivers/create">Create driver</a><br>
<a href="${pageContext.request.contextPath}/cars">See all cars(you can also delete them here)</a><br>
<a href="${pageContext.request.contextPath}/cars/create">Create car</a><br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a><br>
</body>
</html>
