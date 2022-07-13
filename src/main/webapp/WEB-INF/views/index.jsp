<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Taxi service</h1>
<br />
<a href="${pageContext.request.contextPath}/drivers">Show all drivers</a>
<br />
<a href="${pageContext.request.contextPath}/drivers/add">Add a drivers</a>
<br />
<a href="${pageContext.request.contextPath}/cars/add">Add a car</a>
<br />
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add a driver to a car</a>
<br />
<a href="${pageContext.request.contextPath}/manufacturers/add">Add a manufacturers</a>
</body>
</html>
