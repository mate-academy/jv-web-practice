<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Head menu</title>
</head>
<body>
<table>
    <tr>
        <td><h3><a href="${pageContext.request.contextPath}/drivers">All drivers</a></h3></td>
        <td><h3><a href="${pageContext.request.contextPath}/cars/add">Add car</a></h3></td>
        <td><h3><a href="${pageContext.request.contextPath}/drivers/add">Add driver</a></h3></td>
        <td><h3><a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer</a></h3></td>
        <td><h3><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></h3></td>
    </tr>
</table>
</body>
</html>
