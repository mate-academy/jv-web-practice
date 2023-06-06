<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h1>Taxi service</h1>
<form action="${pageContext.request.contextPath}/cars">
    <input type="submit" value="CARS" />
</form>
<form action="${pageContext.request.contextPath}/drivers">
    <input type="submit" value="DRIVERS" />
</form>
<form action="${pageContext.request.contextPath}/manufacturers">
    <input type="submit" value="MANUFACTURERS" />
</form>
</body>
</html>
