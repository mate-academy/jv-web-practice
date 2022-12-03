<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, ${message} mates!</h1>
<br>
<div>
    <a href="${pageContext.request.contextPath}/cars/create">CREATE A NEW CAR</a>
    <br>
    <a href="${pageContext.request.contextPath}/cars/add-driver">ADD DRIVER TO CAR</a>
    <br>
    <a href="${pageContext.request.contextPath}/cars/all">SEE ALL CARS</a>
</div>
<br>
<div>
    <a href="${pageContext.request.contextPath}/manufacturers/create">CREATE A NEW MANUFACTURER</a>
    <br>
    <a href="${pageContext.request.contextPath}/manufacturers/all">SEE ALL MANUFACTURERS</a>
</div>
<br>
<a href="${pageContext.request.contextPath}/drivers/create">CREATE A NEW DRIVER</a>
<br>
<a href="${pageContext.request.contextPath}/drivers/all">SEE ALL DRIVERS</a>
</body>
</html>
