<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>TAXI SERVICE</title>
</head>
<body>
<h1>SELECT ANY OPTION</h1>
<p>Options:</p>
<a href="${pageContext.request.contextPath}/drivers">Show all drivers</a><br>
<a href="${pageContext.request.contextPath}/drivers/add">Create new driver</a><br>
<br>
<a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/add">Create new manufacturer</a><br>
<br>
<a href="${pageContext.request.contextPath}/cars">Show all cars</a><br>
<a href="${pageContext.request.contextPath}/cars/add">Create new car</a><br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a><br>
<a href="${pageContext.request.contextPath}/cars/drivers/delete">Delete driver from car</a><br>
</body>
</html>
