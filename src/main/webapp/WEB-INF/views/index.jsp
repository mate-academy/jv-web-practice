<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi</title>
</head>
<body>
<h1>Hello, dudes!</h1>
<p>Choose operation:</p>
<button onclick="location.href='${pageContext.request.contextPath}/drivers/add'">Add driver</button>
<button onclick="location.href='${pageContext.request.contextPath}/manufacturers/add'">Add manufacturer</button>
<button onclick="location.href='${pageContext.request.contextPath}/cars/add'">Add car</button> <br>
<br><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a><br>
<br><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a><br>
<br><a href="${pageContext.request.contextPath}/manufacturers">Display all manufacturers</a><br>
<br><a href="${pageContext.request.contextPath}/cars">Display all cars</a>
</body>
</html>
