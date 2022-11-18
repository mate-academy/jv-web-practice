<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>menu</title>
</head>
<body>
<h1>Hello. follow this order</h1>
<h2>Create manufacturer -> <a href="${pageContext.request.contextPath}/manufacturers/add">press it</a> </h2>
<h2>Add Driver to Db -> <a href="${pageContext.request.contextPath}/drivers/add">press it</a></h2>
<h2>Get all drivers from DB -> <a href="${pageContext.request.contextPath}/drivers">press it</a></h2>
<h2>Add Car to Db -> <a href="${pageContext.request.contextPath}/cars/add">press it</a></h2>
<h2>Add driver to car -> <a href="${pageContext.request.contextPath}/cars/drivers/add">press it</a></h2>
</body>
</html>
