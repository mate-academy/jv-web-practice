<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h2>Choose one of the options from the links below</h2>
<h3><a href="${pageContext.request.contextPath}/drivers/add">Registration a new driver</a></h3>
<h3><a href="${pageContext.request.contextPath}/manufacturers/add">Registration a new manufacturer</a></h3>
<h3><a href="${pageContext.request.contextPath}/cars/add">Registration a new car</a></h3>
<h3><a href="${pageContext.request.contextPath}/cars/drivers/add">Adding a driver to a car</a></h3>
<h3><a href="${pageContext.request.contextPath}/drivers/all">List of all drivers</a></h3>
<h3><a href="${pageContext.request.contextPath}/manufacturers/all">List of all manufacturers</a></h3>
<h3><a href="${pageContext.request.contextPath}/cars/all">List of all cars</a></h3>
</body>
</html>
