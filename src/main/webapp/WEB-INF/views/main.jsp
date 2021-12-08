<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
</head>
<body>
<h1>Menu</h1>
<a href="${pageContext.request.contextPath}/drivers">Click to see all drivers</a><br/>
<a href="${pageContext.request.contextPath}/drivers/add">Click to add driver</a><br/>
<br/>
<a href="${pageContext.request.contextPath}/manufacturers">Click to see all manufacturers</a><br/>
<a href="${pageContext.request.contextPath}/manufacturers/add">Click to add manufacturer</a><br/>
<br/>
<a href="${pageContext.request.contextPath}/cars">Click to see all cars</a><br/>
<a href="${pageContext.request.contextPath}/cars/add">Click to add car</a><br/>
<a href="${pageContext.request.contextPath}/drivers/cars/add">Click to add driver to car</a><br/>
</body>
</html>
