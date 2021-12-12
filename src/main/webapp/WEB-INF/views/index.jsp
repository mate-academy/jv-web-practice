<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MA taxi service</title>
</head>
<body>
<table border="1">
    <tr>
        <th colspan="4"><h1>Mates taxi service</h1></th>
    </tr>
    <tr>
        <th>Cars</th>
        <th>Drivers</th>
        <th>Manufacturers</th>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars">Get all cars</a></td>
        <td><a href="${pageContext.request.contextPath}/drivers">Get all drivers</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers">Get all manufacturers</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/add">Add new car</a></td>
        <td><a href="${pageContext.request.contextPath}/drivers/add">Add new driver</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacturer</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></td>
        <td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></td>
        <td></td>
    </tr>
</table>
</body>
</html>
