<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<div>
    <h1>Taxi service:</h1>
    <c:set var="path" value="${pageContext.request.contextPath}" />
    <table>
        <a href="${path}/cars/drivers/add" >Add driver to car</a>
        <br>
        <a href="${path}/cars/add" >Create a car</a>
        <br>
        <a href="${path}/drivers/add" >Create a driver</a>
        <br>
        <a href="${path}/manufacturers/add" >Create a manufacturer</a>
        <br>
        <a href="${path}/cars" >Show all cars</a>
        <br>
        <a href="${path}/drivers" >Show all drivers</a>
        <br>
        <a href="${path}/manufacturers" >Show all manufacturers</a>
    </table>
</div>
</body>
</html>
