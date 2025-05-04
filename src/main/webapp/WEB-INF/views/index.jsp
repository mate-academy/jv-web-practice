<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Navigation</title>
</head>
<body>
<h1>Navigation menu:</h1>
<ul>
    <li>
        <a href="${pageContext.request.contextPath}/cars/">Show all cars</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/cars/create">Create new car</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/cars/add">Add driver to car</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/drivers/">Display All Drivers</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/drivers/create">Create new Driver</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/manufacturers/">Show all manufacturers</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/manufacturers/create">Create new manufacturer</a>
    </li>
</ul>
</body>
</html>
