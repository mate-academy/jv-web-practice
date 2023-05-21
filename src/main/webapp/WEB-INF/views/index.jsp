<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Hello, this is a simple taxi service!</h1><br>
<h2>Menu</h2>
<a href="${pageContext.request.contextPath}/drivers/all">1. Look at all drivers list</a><br>
<a href="${pageContext.request.contextPath}/drivers/create">2. Create new driver</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/all">3. Look at all manufacturers list</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/create">4. Create new manufacturer</a><br>
<a href="${pageContext.request.contextPath}/cars/all">5. Look at all cars list</a><br>
<a href="${pageContext.request.contextPath}/cars/create">6. Create new car</a><br>
<a href="${pageContext.request.contextPath}/cars_drivers/add_driver_to_car">7. Add driver to car</a><br>
<a href="${pageContext.request.contextPath}/cars/delete">8. Delete car</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/delete">9. Delete manufacturer</a><br>
</body>
</html>
