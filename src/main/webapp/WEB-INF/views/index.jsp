<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Index</title>
    <style><%@include file="/WEB-INF/style/main.css"%></style>
</head>
<body>
<div class="content">
    <h1>Choose:</h1>
    <table>
        <a href="${pageContext.request.contextPath}/cars/drivers/add" >Add driver to car</a>
        <br>
        <a href="${pageContext.request.contextPath}/cars/add" >Create a car</a>
        <br>
        <a href="${pageContext.request.contextPath}/drivers/add" >Create a driver</a>
        <br>
        <a href="${pageContext.request.contextPath}/manufacturers/add" >Create a manufacturer</a>
        <br>
        <a href="${pageContext.request.contextPath}/drivers" >Show all drivers</a>
    </table>
</div>
</body>
</html>
