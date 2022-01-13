<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Fixing Driver for the Car</title>
</head>
<body>
<h2>Select driver for the Car:</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/fixingdriverforcar">
    Car <select name="driver_id">
    <c:forEach items="${driversList}" var="driver">
        <option value="${driver.id}">${driver.id}${"  "}
                ${driver.name}${"  "}${driver.licenseNumber}</option>
    </c:forEach>
</select>
    <h2>Select the Car:</h2>
    Car <select name="car_id">
    <c:forEach items="${carsList}" var="car">
        <option value="${car.id}">${car.id}${"  "}${car.model}</option>
    </c:forEach>
</select>
    </br>
    <button type="submit">Input data</button>
</form>
<a href="${pageContext.request.contextPath}/index">Back to main menu</a></body>
</html>
