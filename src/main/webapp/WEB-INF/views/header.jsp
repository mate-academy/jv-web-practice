<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
<table border="1">
    <tr>
        <td><a href="${pageContext.request.contextPath}/manufacturers">manufacturers</a></td>
        <td><a href="${pageContext.request.contextPath}/drivers">drivers</a></td>
        <td><a href="${pageContext.request.contextPath}/cars">cars</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/manufacturers/add">add manufacturers</a></td>
        <td><a href="${pageContext.request.contextPath}/drivers/add">add drivers</a></td>
        <td><a href="${pageContext.request.contextPath}/cars/add">add cars</a></td>
    </tr>
</table>
</body>
</html>
