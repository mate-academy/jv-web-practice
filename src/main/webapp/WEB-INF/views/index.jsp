<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Main page</title>
</head>
<body>
<h1>Choose an action:</h1>
<table>
    <br><a href="${pageContext.request.contextPath}/cars/drivers/add" >Add driver to car</a></br>
    <br><a href="${pageContext.request.contextPath}/cars/add" >Create a car</a></br>
    <br><a href="${pageContext.request.contextPath}/drivers/add" >Create a driver</a></br>
    <br><a href="${pageContext.request.contextPath}/manufacturers/add" >Create a manufacturer</a></br>
    <br><a href="${pageContext.request.contextPath}/cars/all" >Show all cars (Admin)</a></br>
    <br><a href="${pageContext.request.contextPath}/drivers/all" >Show all drivers (Admin)</a></br>
    <br><a href="${pageContext.request.contextPath}/drivers/" >Show all drivers (User)</a></br>
    <br><a href="${pageContext.request.contextPath}/manufacturers/all" >Show all manufacturers (Admin)</a>
</table>
</body>
</html>
