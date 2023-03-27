<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
</head>
<body>
<h1>Choose action:</h1>
<table>
    <tr>
        <td>Create car</td>
        <td><a href="${pageContext.request.contextPath}/cars/create">link</a></td>
    </tr>
    <tr>
        <td>Add driver to car</td>
        <td><a href="${pageContext.request.contextPath}/cars/addDriver">link</a></td>
    </tr>
    <tr>
        <td>Get all cars</td>
        <td><a href="${pageContext.request.contextPath}/cars/all">link</a></td>
    </tr>
    <tr>
        <td>Create driver</td>
        <td><a href="${pageContext.request.contextPath}/drivers/create">link</a></td>
    </tr>
    <tr>
        <td>Get all drivers</td>
        <td><a href="${pageContext.request.contextPath}/drivers/all">link</a></td>
    </tr>
    <tr>
        <td>Create manufacturer</td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/create">link</a></td>
    </tr>
    <tr>
        <td>Get all manufacturers</td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/all">link</a></td>
    </tr>
</table>
</body>
</html>
