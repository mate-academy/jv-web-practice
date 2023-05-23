<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Well done, mates!</h1>
<table>

    <tr><a href="${pageContext.request.contextPath}/cars"> Show all cars</a></tr>
    <br/>
    <tr><a href="${pageContext.request.contextPath}/cars/add"> Register new car</a></tr>
    <br/>
    <tr><a href="${pageContext.request.contextPath}/cars/drivers/add"> Add driver to car</a></tr>
    <br/>
    <tr><a href="${pageContext.request.contextPath}/manufacturers"> Show all manufacturers</a></tr>
    <br/>
    <tr><a href="${pageContext.request.contextPath}/manufacturers/add"> Register new manufacturer</a></tr>
    <br/>
    <tr><a href="${pageContext.request.contextPath}/drivers"> Show all drivers</a></tr>
    <br/>
    <tr><a href="${pageContext.request.contextPath}/drivers/add"> Register new driver</a></tr>

</table>
</body>
</html>
