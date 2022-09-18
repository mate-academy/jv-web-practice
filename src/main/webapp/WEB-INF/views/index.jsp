<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Home Page</h1>
<h2>Info</h2>
    <ol>
        <li><a href="${pageContext.request.contextPath}/cars">
            Show all cars</a></li>
        <li><a href="${pageContext.request.contextPath}/drivers">
            Show all drivers</a></li>
    </ol>
</body>
</html>
