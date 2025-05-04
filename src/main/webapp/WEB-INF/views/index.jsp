<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
</head>
<body>
<h1>Main page</h1>
<p><a href="${pageContext.request.contextPath}/manufacturers/create">Create manufacturer</a> </p>
<p><a href="${pageContext.request.contextPath}/drivers/create">Create driver</a> </p>
<p><a href="${pageContext.request.contextPath}/cars/create">Create car</a> </p>
<p><a href="${pageContext.request.contextPath}/drivers">Show all drivers</a> </p>
<p><a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a> </p>
<p><a href="${pageContext.request.contextPath}/cars">Show all cars</a> </p>
<p><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a> </p>
</body>
</html>
