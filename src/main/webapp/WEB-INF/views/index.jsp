<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Start page</title>
    </head>
    <body>
        <h1>Choose what you want to do</h1>
        <a href="${pageContext.request.contextPath}/cars">Display all cars</a>
        <a href="${pageContext.request.contextPath}/drivers">Display all drivers</a>
        <a href="${pageContext.request.contextPath}/manufacturers">Display all manufacturers</a>
        <h1></h1>
        <a href="${pageContext.request.contextPath}/cars/add">Create new car</a>
        <a href="${pageContext.request.contextPath}/drivers/add">Create new driver</a>
        <a href="${pageContext.request.contextPath}/manufacturers/add">Create new manufacturer</a>
        <a href="${pageContext.request.contextPath}/cars/add_driver">Add driver to car</a>
    </body>
</html>