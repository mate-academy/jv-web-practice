<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h1>Welcome to out taxi service</h1>
<h2>Choose the option</h2>
<form action="${pageContext.request.contextPath}/cars">
    <input type="submit" value="List of Cars">
</form>
<form action="${pageContext.request.contextPath}/manufacturers">
    <input type="submit" value="List of Manufacturers">
</form>
<form action="${pageContext.request.contextPath}/drivers">
    <input type="submit" value="List of Drivers">
</form>
</body>
</html>