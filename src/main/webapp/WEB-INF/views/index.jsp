<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu</title>
</head>
<body>
<h1>Navigation menu</h1>
    <table style="width:50%">
        <tr>
            <td><a href="${pageContext.request.contextPath}/cars/create">Create a new car</a></td>
            <td><a href="${pageContext.request.contextPath}/cars">Show all cars</a></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add a driver to a car</a></td>
        </tr>
        <tr>
            <td><a href="${pageContext.request.contextPath}/drivers/create">Create a new driver</a></td>
            <td><a href="${pageContext.request.contextPath}/drivers">Show all drivers</a></td>
        </tr>
        <tr>
            <td><a href="${pageContext.request.contextPath}/manufacturers/create">Create a new manufacturer</a></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a></td>
        </tr>
    </table>
</body>
</html>
