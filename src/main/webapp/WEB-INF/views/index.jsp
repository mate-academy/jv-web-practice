<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index page</title>
</head>
<body>
<h1>Control page</h1>
<a href="${pageContext.request.contextPath}/manufacturers/all">See all manufacturers(you can also delete them here)</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/create">Create manufacturer</a><br>
<a href="${pageContext.request.contextPath}/drivers/all">See all drivers(you can also delete them here)</a><br>
<a href="${pageContext.request.contextPath}/drivers/create">Create driver</a><br>
<a href="${pageContext.request.contextPath}/cars/all">See all cars(you can also delete them here)</a><br>
<a href="${pageContext.request.contextPath}/cars/create">Create car</a><br>
<a href="${pageContext.request.contextPath}/cars/addDriver">Add driver to car</a><br>
</body>
</html>
