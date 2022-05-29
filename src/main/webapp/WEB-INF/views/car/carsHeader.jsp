<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car</title>
</head>
<h1>Select one of those functions:</h1>
<body>
<tr>
    <td><a href="${pageContext.request.contextPath}/cars/create">Create a car</a></td>
    <td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></td>
    <td><a href="${pageContext.request.contextPath}/cars/all">Get all cars</a></td>
</tr>
</body>
</html>
