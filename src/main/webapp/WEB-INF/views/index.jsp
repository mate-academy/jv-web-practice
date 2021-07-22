<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My team</title>
    <title>Main page</title>
</head>
<body>
<h1>Hello, mates!</h1>
<table>
    <br><a href="${pageContext.request.contextPath} cars/drivers/add" >Add driver to car</a></br>
    <br><a href="${pageContext.request.contextPath} cars/add">Add a car</a></br>
    <br><a href="${pageContext.request.contextPath} drivers/add">Add a driver</a></br>
    <br><a href="${pageContext.request.contextPath} manufacturers/add">Add a manufacturer</a></br>
    <br><a href="${pageContext.request.contextPath} drivers">Display all drivers </a></br>
</table>
</body>
</html>
