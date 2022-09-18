<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<div style="text-align: center;"><h1>Welcome to our cab service.</h1>
    <h2>Below we present the functions available to you. What would you like to do?</h2>

    <p>- Information display -</p>
    <li><a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a></li>
    <li><a href="${pageContext.request.contextPath}/cars">Show all cars</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers">Show all drivers</a></li>

    <p>- Data operation -</p>
    <li><a href="${pageContext.request.contextPath}/manufacturer/add">Add new manufacturer to dataBase</a></li>
    <li><a href="${pageContext.request.contextPath}/car/add">Add new car to dataBase</a></li>
    <li><a href="${pageContext.request.contextPath}/driver/add">Add new driver to dataBase</a></li>
    <li><a href="${pageContext.request.contextPath}/car/add-driver">Add new driver to car</a></li>
</div>

</body>
</html>
