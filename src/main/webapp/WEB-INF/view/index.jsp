<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Web Practice</title>
</head>
<body>
<ul>
    <li><a href = "${pageContext.request.contextPath}/drivers/create">Create driver</a></li>
    <li><a href = "${pageContext.request.contextPath}/drivers">Display drivers</a></li>
    <li><a href = "${pageContext.request.contextPath}/manufacturers/create">Create manufacturer</a></li>
    <li><a href = "${pageContext.request.contextPath}/cars/create">Create car</a></li>
    <li><a href = "${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></li>
    <li><a href = "${pageContext.request.contextPath}/manufacturers">Display manufacturers</a></li>
    <li><a href = "${pageContext.request.contextPath}/cars">Display cars</a></li>
</ul>
</body>
</html>
