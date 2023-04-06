<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
</head>
<body>
<h1>Welcome to taxi service</h1>
<a href="${pageContext.request.contextPath}/manufacturers">
    <input type="button" value="Manufacturers" />
</a><br><br>
<a href="${pageContext.request.contextPath}/drivers">
    <input type="button" value="Drivers" />
</a><br><br>
<a href="${pageContext.request.contextPath}/cars">
    <input type="button" value="Cars" />
</a><br>
</body>
</html>