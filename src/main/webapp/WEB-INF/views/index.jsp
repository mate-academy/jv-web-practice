<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>All cars</h1>
<a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer</a><br>
<a href="${pageContext.request.contextPath}/drivers/add">Add driver</a><br>
<a href="${pageContext.request.contextPath}/cars/add">Add car</a><br><br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a><br>
<br>
<a href="${pageContext.request.contextPath}/drivers">Show all drivers</a><br>
<a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a><br>
<a href="${pageContext.request.contextPath}/cars">Show all cars</a><br>

</body>
</html>
