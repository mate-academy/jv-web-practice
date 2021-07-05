<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>My web-site</title>
    </head>
    <body>
        <h1>My first web-application !!!</h1>
        <hr>
        <ul>
            <li><a href="${pageContext.request.contextPath}/cars/add" target="_blank">Add car</a></li>
            <li><a href="${pageContext.request.contextPath}/cars/drivers/add" target="_blank">Add driver to car</a></li>
            <li><a href="${pageContext.request.contextPath}/cars/all" target="_blank">All cars</a></li>
        </ul>
        <hr>
        <ul>
            <li><a href="${pageContext.request.contextPath}/drivers/add" target="_blank">Add driver</a></li>
            <li><a href="${pageContext.request.contextPath}/drivers/all" target="_blank">All drivers</a></li>
        </ul>
        <hr>
        <ul>
            <li><a href="${pageContext.request.contextPath}/manufacturers/add" target="_blank">Add manufacturer</a></li>
            <li><a href="${pageContext.request.contextPath}/manufacturers/all" target="_blank">All manufacturers</a></li>
        </ul>
        <hr>
    </body>
</html>
