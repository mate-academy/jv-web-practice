<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<table border="2">
    <tr>
        <td><a href="${pageContext.request.contextPath}/drivers/create">Create driver</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/create">Create manufacturer</a></td>
        <td><a href="${pageContext.request.contextPath}/cars/create">Create car</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/drivers/get-all">Show all drivers</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/get-all">Show all manufacturers</a></td>
        <td><a href="${pageContext.request.contextPath}/cars/get-all">Show all cars</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/add-driver">Add driver to car</a></td>
    </tr>
</table>
</body>
</html>
