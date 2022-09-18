<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TAXI SERVICE</title>
</head>
<body>
<h1>Choose operation</h1>
<td><a href="${pageContext.request.contextPath}/cars/drivers/add">add driver to car</a></td>
<br>
<td><a href="${pageContext.request.contextPath}/cars/add">create a car</a></td>
<br>
<td><a href="${pageContext.request.contextPath}/drivers">get all car</a></td>
<br>
<td><a href="${pageContext.request.contextPath}/drivers/add">create a driver</a></td>
<br>
<td><a href="${pageContext.request.contextPath}/manufacturers/add">create a manufacturer</a></td>
</body>
</html>
