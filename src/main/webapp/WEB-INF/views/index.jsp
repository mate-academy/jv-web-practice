<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<table>
    <tr>
        <td><a href="${pageContext.request.contextPath}/drivers">All drivers</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers">All manufacturer</a></td>
        <td><a href="${pageContext.request.contextPath}/cars/create">Create car</a></td>
        <td><a href="${pageContext.request.contextPath}/drivers/create">Create driver</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/create">Create manufacturer</a></td>
        <td><a href="${pageContext.request.contextPath}cars/drivers/add">add driver to car</a></td>
    </tr>
</table>
</body>
</html>
