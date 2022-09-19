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
        <li><a href="${pageContext.request.contextPath}/manufacturers">
            Show all manufacturers</a></li>
    </ol>
<h2>Add new data</h2>
    <ol>
        <li><a href="${pageContext.request.contextPath}/cars/create">
            Create new car</a></li>
        <li><a href="${pageContext.request.contextPath}/drivers/create">
            Create new driver</a></li>
        <li><a href="${pageContext.request.contextPath}/manufacturers/create">
            Create new manufacturer</a></li>
    </ol>
</body>
</html>
