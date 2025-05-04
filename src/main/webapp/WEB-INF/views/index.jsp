<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ATMS-Home</title>
</head>
<body>
<h2>Welcome to ATMS - Anonymous Taxi Management System</h2>
<a href="${pageContext.request.contextPath}/manufacturers">
    <input type="button" value="Manage manufacturers" />
</a><br><br>
<a href="${pageContext.request.contextPath}/drivers">
    <input type="button" value="Manage drivers" />
</a><br><br>
<a href="${pageContext.request.contextPath}/cars">
    <input type="button" value="Manage cars" />
</a><br>
</body>
</html>
