<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>
<div style="margin: auto; width: 20%;">
    <h1>MENU</h1>
    1. <a href="${pageContext.request.contextPath}/displayAllDrivers">DISPLAY ALL DRIVERS</a><br>
    <br>
    2. <a href="${pageContext.request.contextPath}/displayAllManufacturers">DISPLAY ALL MANUFACTURERS</a><br>
    <br>
    3. <a href="${pageContext.request.contextPath}/displayAllCars">DISPLAY ALL CARS</a><br>
</div>
</body>
</html>
