<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TAXI SERVICE</title>
</head>
<body>
<h1>Choose operation</h1>
<li><a href="${pageContext.request.contextPath}/cars/drivers/add">add driver to car</a></li>
<br>
<li><a href="${pageContext.request.contextPath}/cars/add">create a car</a></li>
<br>
<li><a href="${pageContext.request.contextPath}/drivers">get all car</a></li>
<br>
<li><a href="${pageContext.request.contextPath}/drivers/add">create a driver</a></li>
<br>
<li><a href="${pageContext.request.contextPath}/manufacturers/add">create a manufacturer</a></li>
</body>
</html>
