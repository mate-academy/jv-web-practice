<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Good Day!</title>
</head>
<body>
<h1>Links:</h1>
<h3>Manufacturers</h3>
<ul>
<li><a href="${pageContext.request.contextPath}/manufacturer/all">Show Manufacturers</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturer/new">Create New
    Manufacturer</a></li>
</ul>
<h3>Drivers</h3>
<ul>
    <li><a href="${pageContext.request.contextPath}/driver/all">Show Drivers</a></li>
    <li><a href="${pageContext.request.contextPath}/driver/new">Create New
    Driver</a></li>
</ul>
<h3>Cars</h3>
<ul>
    <li><a href="${pageContext.request.contextPath}/car/all">Show All Cars</a></li>
    <li><a href="${pageContext.request.contextPath}/car/new">Create New Car</a></li>
    <li><a href="${pageContext.request.contextPath}/car/driver/add">Add Driver To Car</a></li>
</ul>

</body>
</html>
