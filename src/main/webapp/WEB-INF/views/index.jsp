<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Choose the option you need:</h1>

<a href="${pageContext.request.contextPath}/manufacturers">
    <input type="button" value="MANUFACTURERS" />
</a><br><br>
<a href="${pageContext.request.contextPath}/drivers">
    <input type="button" value="DRIVERS" />
</a><br><br>
<a href="${pageContext.request.contextPath}/cars">
    <input type="button" value="CARS" />
</a><br>
</body>
</html>
