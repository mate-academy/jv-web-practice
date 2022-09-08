<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Taxi</h1>
<ul>
    <li><a href="${pageContext.request.contextPath}/drivers/create">Create driver</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturer/create">Create a manufacturer</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/create">Create a car</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/add_driver">Add driver to car</a></li>
</ul>
</body>
</html>
