<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<table border="2">
    <tr>
        <td><a href="${pageContext.request.contextPath}/drivers/add">Create driver</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/add">Create manufacturer</a></td>
        <td><a href="${pageContext.request.contextPath}/cars/add">Create car</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/drivers">Show all drivers</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a></td>
        <td><a href="${pageContext.request.contextPath}/cars">Show all cars</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></td>
    </tr>
</table>
</body>
</html>
