<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
    <title>Taxi service</title>
</head>
<body>
<h1>Hello, mates!</h1>
<form method="post" id="redirect"></form>
<h1>Taxi Service</h1>
<h2>Choose, what you want to do in the list below</h2>
<table>
    <tr>
        <td><a href="${pageContext.request.contextPath}/drivers/new">Create new driver</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/manufacturers/new">Create new manufacturer</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/new">Create new car</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/drivers/new">Add driver to car</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars">Show all cars</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/manufacturers">Display all manufacturers</a></td>
    </tr>
</table>
</body>
</html>
