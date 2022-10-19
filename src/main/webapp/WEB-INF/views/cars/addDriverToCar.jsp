<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<H1>Add driver to car</H1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="text" name="car_id"><br>
    Driver id <input type="text" name="driver_id"><br>
    <button type="submit">Add</button>
</form>
<br>
<br>
<ul>
    <li><a href="${pageContext.request.contextPath}/cars/all">List All Cars</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers/all">List All Drivers</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers/all">List All Manufacturers</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></li>
</ul>
</body>
</html>
