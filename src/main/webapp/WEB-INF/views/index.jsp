<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>TAXI SERVICE</h1>
<a href="${pageContext.request.contextPath}/get-drivers">
    Get All Drivers
</a><br>
<a href="${pageContext.request.contextPath}/get-manufacturers">
    Get All Manufacturers
</a><br>
<a href="${pageContext.request.contextPath}/get-cars">
    Get All Cars
</a><br>
<a href="${pageContext.request.contextPath}/add-driver">
    Add Driver
</a><br>
<a href="${pageContext.request.contextPath}/add-manufacturer">
    Add Manufacturer
</a><br>
<a href="${pageContext.request.contextPath}/add-car">
    Add Car
</a><br>
<a href="${pageContext.request.contextPath}/add-driver-to-car">
    Add Driver to Car
</a><br>
</body>
</html>
