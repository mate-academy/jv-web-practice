<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to taxi service</title>
</head>
<body>
<h1>Welcome to taxi service</h1>
<td>
    <tr><a href="${pageContext.request.contextPath}/drivers/all">Show all drivers</a></tr><br>
    <tr><a href="${pageContext.request.contextPath}/manufacturers/all">Show all manufacturers</a></tr><br>
    <tr><a href="${pageContext.request.contextPath}/cars/all">Show all cars</a></tr>
</td>
</body>
</html>
