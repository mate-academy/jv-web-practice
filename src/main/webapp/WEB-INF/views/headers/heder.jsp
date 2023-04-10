
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>
    <a href="${pageContext.request.contextPath}/manufacturers/add">
        <input type="button" value="Create new manufacturer" />
    </a>
    <a href="${pageContext.request.contextPath}/drivers">
        <input type="button" value="All drivers" />
    </a>
    <a href="${pageContext.request.contextPath}/drivers/add">
        <input type="button" value="Create new driver" />
    </a>
    <a href="${pageContext.request.contextPath}/cars/add">
        <input type="button" value="Add new car" />
    </a>
    <a href="${pageContext.request.contextPath}/cars/drivers/add">
        <input type="button" value="Add driver to car" />
    </a>
</h4>
</body>
</html>
