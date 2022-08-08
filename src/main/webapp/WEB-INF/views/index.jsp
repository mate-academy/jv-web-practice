<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% pageContext.setAttribute("applicationPath", request.getContextPath()); %>
<html>
<head>
    <title>My taxi</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<h2>Action menu</h2>
<p><a href="${applicationPath}/drivers/add">Add driver</a></p>
<p><a href="${applicationPath}/drivers">Display all drivers</a></p>
<p><a href="${applicationPath}/manufacturers/add">Add manufacturer</a></p>
<p><a href="${applicationPath}/manufacturers">Display all manufacturers</a></p>
<p><a href="${applicationPath}/cars/add">Add car</a></p>
<p><a href="${applicationPath}/cars/drivers/add">Add driver to car</a></p>
<p><a href="${applicationPath}/cars">Display all cars</a></p>
</body>
</html>