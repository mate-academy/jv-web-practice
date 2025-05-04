<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Main page</title>
</head>
<body>
<h1>What do you want to do?</h1>
    <p><a href="${pageContext.request.contextPath}/drivers/add">Create a driver</a></p>
    <p><a href="${pageContext.request.contextPath}/manufacturers/add">Create a manufacturer</a></p>
    <p><a href="${pageContext.request.contextPath}/cars/add">Create a car</a></p>
    <p><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a></p>
    <p><a href="${pageContext.request.contextPath}/manufacturers">Display all manufacturers</a></p>
    <p><a href="${pageContext.request.contextPath}/cars">Display all cars</a></p>
    <p><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to the car</a></p>
    <p><a href="${pageContext.request.contextPath}/cars/drivers/delete">Delete driver from the car</a></p>
</body>
</html>
