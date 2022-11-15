<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h1>Index</h1>
<table>
    <tr><td><a href="${pageContext.request.contextPath}/drivers">All drivers</a></td></tr>

    <tr><td><a href="${pageContext.request.contextPath}/drivers">Create driver</a></td></tr>

    <tr><td><a href="${pageContext.request.contextPath}/manufacturers">Create manufacturer</a></td></tr>

    <tr><td><a href="${pageContext.request.contextPath}/cars">Create car</a></td></tr>

    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to a car</a></td></tr>
</table>
</body>
</html>
