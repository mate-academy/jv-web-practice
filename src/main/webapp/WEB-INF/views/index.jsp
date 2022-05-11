<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi</title>
</head>
<body>
<h1>Cars</h1>
<h2>
    <a href="${pageContext.request.contextPath}/cars/add">Create Car <br></a>
    <a href="${pageContext.request.contextPath}/cars"> Get All cars<br></a>
</h2>
<h1>Drivers</h1>
<h2>
    <a href="${pageContext.request.contextPath}/drivers/add">Create drivers<br></a>
    <a href="${pageContext.request.contextPath}/drivers">Get all drivers<br></a>
</h2>
<h1>Manufacturers</h1>
<h2>
    <a href="${pageContext.request.contextPath}/manufacturers/add">Create Manufacturer<br></a>
    <a href="${pageContext.request.contextPath}/manufacturers">Get all Manufacturers<br></a>
</h2>
</body>
</html>
