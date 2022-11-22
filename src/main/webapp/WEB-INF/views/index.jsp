<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates!</h1>
<a href="${pageContext.request.contextPath}/driver/create">Create new driver</a>
<br>
<a href="${pageContext.request.contextPath}/manufacturer/create">Create new manufacturer</a>
<br>
<a href="${pageContext.request.contextPath}/car/create">Create new car</a>
</body>
</html>
