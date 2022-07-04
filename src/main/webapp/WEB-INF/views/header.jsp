<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
<table border="1">
    <tr>
        <td><a href="${pageContext.request.contextPath}/manufacturers">all manufacturers</a></td>
        <td><a href="${pageContext.request.contextPath}/drivers">all drivers</a></td>
        <td><a href="${pageContext.request.contextPath}/cars">all cars</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/manufacturers/add">add manufacturer</a></td>
        <td><a href="${pageContext.request.contextPath}/drivers/add">add driver</a></td>
        <td><a href="${pageContext.request.contextPath}/cars/add">add car</a></td>
    </tr>
</table>
</body>
</html>
