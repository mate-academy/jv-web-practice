<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Good Day!</title>
</head>
<body>
<h1>Links:</h1>
<h3>Manufacturers</h3>
<ul>
<li><a href="${pageContext.request.contextPath}/manufacturers">Show Manufacturers</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers/add">Create New
    Manufacturer</a></li>
</ul>
<h3>Drivers</h3>
<ul>
    <li><a href="${pageContext.request.contextPath}/drivers">Show Drivers</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers/add">Create New
    Driver</a></li>
</ul>
<h3>Cars</h3>
<ul>
    <li><a href="${pageContext.request.contextPath}/cars">Show All Cars</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/add">Create New Car</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver To Car</a></li>
</ul>

</body>
</html>
