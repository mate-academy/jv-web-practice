<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates chose page!</h1>
<table>
    <tr>
        <td>CARS</td>
        <td>DRIVERS</td>
        <td>MANUFACTURERS</td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/add">Add car</a></td>
        <td><a href="${pageContext.request.contextPath}/drivers/add">Add drivers</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturers</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars">Show all cars</a></td>
        <td><a href="${pageContext.request.contextPath}/drivers">Show all drivers</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></td>
    </tr>
</table>
</body>
</html>
