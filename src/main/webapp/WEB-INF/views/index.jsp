<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Hello, this is a simple taxi service!</h1><br>
<h2>Menu</h2>
<a href="${pageContext.request.contextPath}/drivers/all">1. Look at all drivers list</a><br>
<a href="${pageContext.request.contextPath}/drivers/create">2. Create new driver</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/all">3. Look at all manufacturers list</a><br>
</body>
</html>
