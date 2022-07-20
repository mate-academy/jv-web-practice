<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>${massage}</h1>

<p><a href="${pageContext.request.contextPath}/drivers/create">To driver creation</a></p>
<p><a href="${pageContext.request.contextPath}/drivers">To list of drivers</a></p>

<p><a href="${pageContext.request.contextPath}/manufacturers/create">To manufacturer creation</a></p>
<p><a href="${pageContext.request.contextPath}/manufacturers">To list of manufacturers</a></p>

<p><a href="${pageContext.request.contextPath}/cars/create">To car creation</a></p>
<p><a href="${pageContext.request.contextPath}/cars">To list of all cars</a></p>
<p><a href="${pageContext.request.contextPath}/cars/drivers/add">To driver into car addition</a></p>

</body>
</html>
