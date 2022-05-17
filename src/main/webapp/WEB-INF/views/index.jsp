<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Welcome to taxi!</h1>
<a href="${pageContext.request.contextPath}/drivers/create">Create driver</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/create">Create manufacturer</a><br>
<a href="${pageContext.request.contextPath}/cars/create">Create car</a><br>
<a href="${pageContext.request.contextPath}/drivers/all">Display all drivers</a><br>
<a href="${pageContext.request.contextPath}/services/fix">Add driver to car</a><br>
</body>
</html>
