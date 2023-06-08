<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates!</h1>
<a href="${pageContext.request.contextPath}/cars">Display all cars</a><br>
<br>
<a href="${pageContext.request.contextPath}/cars/add">Add car</a><br>
<br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a><br>
<br>
<a href="${pageContext.request.contextPath}/manufacturers">Display all manufacturers</a><br>
<br>
<a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer</a><br>
<br>
<a href="${pageContext.request.contextPath}/drivers">Display all drivers</a><br>
<br>
<a href="${pageContext.request.contextPath}/drivers/add">Add driver</a><br>

</body>
</html>
