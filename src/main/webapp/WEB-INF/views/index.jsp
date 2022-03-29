<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates!</h1>
<p>Menu:</p>
<a href="${pageContext.request.contextPath}/drivers">Show all drivers</a><br>
<a href="${pageContext.request.contextPath}/drivers/add">Create new driver</a><br>
<br>
<a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/add">Create new manufacturer</a><br>
<br>
<a href="${pageContext.request.contextPath}/cars/add">Create new car</a><br>
</body>
</html>
