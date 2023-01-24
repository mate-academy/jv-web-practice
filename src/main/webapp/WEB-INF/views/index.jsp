<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
</head>
<body>
<h1>Hello, mates!</h1><br>
<h2>Chose page pls</h2><br>
<h3>Car pages</h3><br>
<ul>
    <li><p><a href="${pageContext.request.contextPath}/cars">List all cars</a></p></li>
    <li><p><a href="${pageContext.request.contextPath}/cars/create">Create car</a></p></li>
    <li><p><a href="${pageContext.request.contextPath}/cars/add">Add driver to the car</a></p></li>
</ul>
<br>
<h3>Driver pages</h3>
<ul>
    <li><p><a href="${pageContext.request.contextPath}/drivers">List all drivers</a></p></li>
    <li><p><a href="${pageContext.request.contextPath}/drivers/create">Create driver</a></p></li>
</ul>
<br>
<h3>Manufacturer pages</h3>
<ul>
    <li><p><a href="${pageContext.request.contextPath}/manufacturers">List all manufacturers</a></p></li>
    <li><p><a href="${pageContext.request.contextPath}/manufacturers/add">Create manufacturer</a></p></li>
</ul>
</body>
</html>
