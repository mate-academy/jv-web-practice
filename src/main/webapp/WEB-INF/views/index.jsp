<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi</title>
</head>
<body>
<h1>Cars</h1>
<h2>
    <a href="${pageContext.request.contextPath}/car/add">Create Car <br></a>
    <a href="${pageContext.request.contextPath}/car"> Get All cars<br></a>
</h2>
<h1>Drivers</h1>
<h2>
    <a href="${pageContext.request.contextPath}/driver/add">Create drivers<br></a>
    <a href="${pageContext.request.contextPath}/driver">Get all drivers<br></a>
    <a href="${pageContext.request.contextPath}/driver/add_driver_to_car">Add driver to car<br></a>
</h2>
<h1>Manufacturers</h1>
<h2>
    <a href="${pageContext.request.contextPath}/manufacturer/add">Create Manufacturer<br></a>
    <a href="${pageContext.request.contextPath}/manufacturer">Get all Manufacturers<br></a>
</h2>

</body>
</html>
