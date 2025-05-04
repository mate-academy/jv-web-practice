<%@ page contentType="text/html;charset=UTF-8" language="" %>
<html>
<head>
    <title>Taxi</title>
</head>
<body>
<h1>Welcome</h1>
<form method="post" id="redirect"></form>
<tr><td><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></td></tr>
<tr><td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td></tr>
<tr><td><a href="${pageContext.request.contextPath}/cars/addCar">Create new Car</a></td></tr>
<tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td></tr>
<tr><td><a href="${pageContext.request.contextPath}/cars/addDriverToCar">Add Driver to Car</a></td></tr>
</body>
</html>
