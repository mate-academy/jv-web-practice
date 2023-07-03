<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates!</h1>
<a href="${pageContext.request.contextPath}/drivers/createDriver">Create driver</a>
<p><a href="${pageContext.request.contextPath}/drivers">Get all drivers</a></p>
<p><a href="${pageContext.request.contextPath}/manufacturers/createManufacturer">Create manufacturer</a></p>
<p><a href="${pageContext.request.contextPath}/manufacturers">Get all manufacturers</a></p>
<p><a href="${pageContext.request.contextPath}/cars/createCar">Create car</a></p>
<p><a href="${pageContext.request.contextPath}/cars/addDriverToCar">Add driver to car</a></p>
<p><a href="${pageContext.request.contextPath}/cars">Get all cars</a></p>
</body>
</html>
