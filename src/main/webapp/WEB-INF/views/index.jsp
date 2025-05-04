<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates!</h1>
<table>
    <tr>
        <td> <a href ="${pageContext.request.contextPath}/drivers/add">Add Driver</a></td>
        <td> <a href ="${pageContext.request.contextPath}/drivers">View driver</a></td>
    </tr>
    <tr>
        <td> <a href ="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer</a></td>
        <td> <a href ="${pageContext.request.contextPath}/cars/add">Add car</a></td>
    </tr>
    <tr>
        <td> <a href ="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></td>
    </tr>
</table>
</body>
</html>
