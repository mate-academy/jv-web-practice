<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates!</h1>
<h1>Let`s go testing!</h1>
<a href="${pageContext.request.contextPath}cars">Show cars</a><br>
<a href="${pageContext.request.contextPath}cars/create">Create car</a><br>
<a href="${pageContext.request.contextPath}cars/drivers/add">Add driver to car</a><br>
<a href="${pageContext.request.contextPath}drivers">Show drivers</a><br>
<a href="${pageContext.request.contextPath}drivers/create">Create driver</a><br>
<a href="${pageContext.request.contextPath}manufacturers">Show manufacturer</a><br>
<a href="${pageContext.request.contextPath}manufacturers/create">Create manufacturer</a><br>
</body>
</html>
