<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car operations</title>
</head>
<body>
<h1>Car operations</h1>
<a href="${pageContext.request.contextPath}/cars/add">Add car</a>
<a href="${pageContext.request.contextPath}/cars/driver/add">Add driver to car</a>
<a href="${pageContext.request.contextPath}/cars/drivers">Remove driver from car</a>
<a href="${pageContext.request.contextPath}/cars">All cars</a>
</body>
</html>
