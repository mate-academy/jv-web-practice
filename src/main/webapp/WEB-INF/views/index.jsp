<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates!</h1>
<table>
    <tr>
        <th style="padding: 10px">Cars</th>
        <th style="padding: 10px">Drivers</th>
        <th style="padding: 10px">Manufacturers</th>
    </tr>
    <tr>
        <td style="padding: 10px"><a href="${pageContext.request.contextPath}/cars">Get all cars</a></td>
        <td style="padding: 10px"><a href="${pageContext.request.contextPath}/drivers">Get all drivers</a></td>
        <td style="padding: 10px"><a href="${pageContext.request.contextPath}/manufacturers">Get all manufacturers</a></td>
    </tr>
    <tr>
        <td style="padding: 10px"><a href="${pageContext.request.contextPath}/cars/add">Add a car </a></td>
        <td style="padding: 10px"><a href="${pageContext.request.contextPath}/drivers/add">Add a driver</a></td>
        <td style="padding: 10px"><a href="${pageContext.request.contextPath}/manufacturers/add">Add a manufacturer</a></td>
    </tr>
    <tr>
        <td style="padding: 10px"><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to a car </a></td>
    </tr>
    <tr>
        <td style="padding: 10px"><a href="${pageContext.request.contextPath}/cars/drivers/delete">Delete driver from a car </a></td>
    </tr>
</table>
</body>
</html>