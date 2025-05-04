<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Homepage</title>
</head>
<body>
<%@ include file="/WEB-INF/views/navigationBar.jsp"%>
<div style="font-family: arial;
float: left; display: inline-block;
background: url('https://i2.paste.pics/MXS5H.png')
no-repeat; width: 1466px; height: 745px">
    <h2 style="color: steelblue">Taxi and Car Rental Service: Mate</h2>
    <a href="${pageContext.request.contextPath}/manufacturers">
        <input type="button" style="color: steelblue" value="New manufacturer registration"/></a>
    <br><br>
    <a href="${pageContext.request.contextPath}/drivers">
        <input type="button" style="color: steelblue" value="New driver registration"/></a>
    <br><br>
    <a href="${pageContext.request.contextPath}/cars">
        <input type="button" style="color: steelblue" value="New car registration"/></a>
    <br><br>
    <a href="${pageContext.request.contextPath}/cars">
        <input type="button" style="color: steelblue" value="Link driver with a car by ID"/></a>
    <br>
</div>
</body>
</html>
