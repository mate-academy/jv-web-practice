<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Welcome!</h1>
<ul>
    <li>
        <a href="${pageContext.request.contextPath}/drivers">all drivers</a><br>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/manufacturers/add">create a manufacturer</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/drivers/add">Create a driver</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/cars/add">Create a car</a><br>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a><br>
    </li>
</ul>
</body>
</html>
