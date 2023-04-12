<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi method choose</title>
</head>
<body>
<h1>Chose action</h1>
<table>
    <tr>
        <td>Create a car</td>
        <td><a href="${pageContext.request.contextPath}/cars/add"> -> Press here</a></td>
    </tr>
    <tr>
        <td>Add driver to car</td>
        <td><a href="${pageContext.request.contextPath}/cars/driver/add"> -> Press here</a></td>
    </tr>
    <tr>
        <td>Create a driver</td>
        <td><a href="${pageContext.request.contextPath}/drivers/add"> -> Press here</a></td>
    </tr>
    <tr>
        <td>Display all drivers</td>
        <td><a href="${pageContext.request.contextPath}/drivers"> -> Press here</a></td>
    </tr>
    <tr>
        <td>Create a manufacturer</td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/add"> -> Press here</a></td>
    </tr>
</table>
</body>
</html>
