<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header's navigation</title>
</head>
<body>
<h3>
    <a href="${pageContext.request.contextPath}/home">
        <input type="button"  style="color: steelblue" value="HOME" /></a>
    <a href="${pageContext.request.contextPath}/manufacturers">
        <input type="button" style="color: steelblue" value="MANUFACTURERS" /></a>
    <a href="${pageContext.request.contextPath}/drivers">
        <input type="button"  style="color: steelblue" value="DRIVERS" /></a>
    <a href="${pageContext.request.contextPath}/cars">
        <input type="button"  style="color: steelblue" value="CARS" /></a>
</h3>
</body>
</html>
