<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<table>
    <tr>
        <td><b>Car</b></td>
        <td><b>Car/Driver</b></td>
        <td><b>Driver</b></td>
        <td><b>Manufacturer</b></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/add">Add car</a></td>
        <td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Drivers To Car</a></td>
        <td><a href="${pageContext.request.contextPath}/drivers/add">Add driver</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer</a></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td><a href="${pageContext.request.contextPath}/drivers">Get all drivers</a></td>
        <td><a href="${pageContext.request.contextPath}/drivers/update">Update driver</a></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers">Get all manufacturer</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/update">Update manufacturer</a></td>
    </tr>
</table>
</body>
</html>
