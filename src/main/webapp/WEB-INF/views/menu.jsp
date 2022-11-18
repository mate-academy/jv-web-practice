<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>menu</title>
</head>
<body>
<h1>Hello, follow this order</h1>
<ul>
    <li><h2>Add manufacturer to DB -> <a href="${pageContext.request.contextPath}/manufacturers/add"><b>press it</b></a> </h2></li>
    <li><h2>Get all manufacturers from DB -> <a href="${pageContext.request.contextPath}/manufacturers">press it</a> </h2></li>
    <li><h2>Add driver to Db -> <a href="${pageContext.request.contextPath}/drivers/add"><b>press it</b></a></h2></li>
    <li><h2>Get all drivers from DB -> <a href="${pageContext.request.contextPath}/drivers"><b>press it</b></a></h2></li>
    <li><h2>Add car to DB -> <a href="${pageContext.request.contextPath}/cars/add"><b>press it</b></a></h2></li>
    <li><h2>Get all cars from DB -> <a href="${pageContext.request.contextPath}/cars"><b>press it</b></a></h2></li>
    <li><h2>Add driver to car -> <a href="${pageContext.request.contextPath}/cars/drivers/add"><b>press it</b></a></h2></li>
</ul>
</body>
</html>
