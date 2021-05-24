<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Menu</title>
</head>
<body>
<h1>Chose the function</h1>
<p>
    <a href=${pageContext.request.contextPath}"/cars/all">
        <button type="submit">ALL CARS</button>
    </a>
</p>
<br>
<p>
    <a href=${pageContext.request.contextPath}"/cars/drivers/add">
        <button type="submit">ADD DRIVER TO CAR</button>
    </a>
</p>
<br>
<p>
    <a href="${pageContext.request.contextPath}/cars/create">
        <button type="submit">CREATE CAR</button>
    </a>
</p>
<br>
<p>
    <a href="${pageContext.request.contextPath}/manufacturers/all">
        <button type="submit">ALL MANUFACTURERS</button>
    </a>
</p>
<br>
<p>
    <a href="${pageContext.request.contextPath}/manufacturers/create">
        <button type="submit">CREATE MANUFACTURERS</button>
    </a>
</p>
<br>
<p>
    <a href="${pageContext.request.contextPath}/drivers/all">
        <button type="submit">ALL DRIVERS</button>
    </a>
</p>
<br>
<p>
    <a href="${pageContext.request.contextPath}/drivers/create">
        <button type="submit">CREATE DRIVER</button>
    </a>
</p>
<br>
</body>
</html>
