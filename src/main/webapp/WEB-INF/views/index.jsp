<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Main page</title>
</head>
<body>
<h1>Hello, mates!</h1>
<h2>Choose action</h2>
<a href="${pageContext.request.contextPath}/manufacturers">Display all manufacturers<br></a>
<a href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacturer<br></a>
<a href="${pageContext.request.contextPath}/drivers">Display all drivers<br></a>
<a href="${pageContext.request.contextPath}/drivers/add">Add new driver<br></a>
<a href="${pageContext.request.contextPath}/cars">Display all cars<br></a>
<a href="${pageContext.request.contextPath}/cars/add">Add new car<br></a>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add new driver to car<br></a>
</body>
</html>
