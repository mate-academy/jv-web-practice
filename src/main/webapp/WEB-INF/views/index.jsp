<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, Mates!!!</h1>
<a href="${pageContext.request.contextPath}/cars/all">Show all cars</a>
<br />
<a href="${pageContext.request.contextPath}/cars/add">Add a car</a>
<br />
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add a driver to a car</a>
<br />
<a href="${pageContext.request.contextPath}/manufacturers/all">Show all manufacturers</a>
<br />
<a href="${pageContext.request.contextPath}/manufacturers/add">Add a manufacturers</a>
<br />
<a href="${pageContext.request.contextPath}/drivers/all">Show all drivers</a>
<br />
<a href="${pageContext.request.contextPath}/drivers/add">Add a drivers</a>
</body>
</html>
