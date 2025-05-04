<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car operation</title>
</head>
<body>
<h1>Choose your operation</h1>
<a href="${pageContext.request.contextPath}/cars/add">Create car</a>
<br/>
<a href="${pageContext.request.contextPath}/cars">Get all cars</a>
<br/>
<a href="${pageContext.request.contextPath}/cars/drivers">Get all cars with drivers</a>
<br/>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a>
</body>
</html>