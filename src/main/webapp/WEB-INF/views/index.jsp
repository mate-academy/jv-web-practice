<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Navigation</title>
</head>
<body>
<h1>Navigation</h1>
<a href="${pageContext.request.contextPath}/cars">All cars</a><br>
<a href="${pageContext.request.contextPath}/drivers">All drivers</a><br>
<a href="${pageContext.request.contextPath}/manufacturers">All manufacturers</a>
<h1>Utils</h1>
<a href="${pageContext.request.contextPath}/drivers/create">Add driver to DB</a><br>
<a href="${pageContext.request.contextPath}/cars/add/driver">Add driver to Car</a><br>
<a href="${pageContext.request.contextPath}/cars/create">Add new Car to DB</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/create">Add new Manufacturer to DB</a>
</body>
</html>
