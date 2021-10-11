<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>adding the driver to the car</title>
</head>
<body>
    <c:if test="${bothError}">Driver ID: ${driverId} and Car ID: ${carId} are absent in DB!</c:if>
    <c:if test="${carIdError}">Car ID: ${carId} is absent in DB!</c:if>
    <c:if test="${driverIdError}">Driver ID: ${driverId} are absent in DB!</c:if>
    <c:if test="${withoutError}">Driver ID: ${driverId} and Car ID: ${carId} were added to DB!</c:if>

    <form method="post" action="${pageContext.request.contextPath}/cars/driver_car">
        <p>
            <label for="driverId">Driver ID:</label>
            <input type="number" id="driverId" name="driverId">
        </p>
        <p>
            <label for="carId">Driver ID:</label>
            <input type="number" id="carId" name="carId">
        </p>
        <button type="submit">CONFIRM</button>
    </form>
    <a href="${pageContext.request.contextPath}/">
        <button>BACK TO THE FUTURE</button>
    </a>
</body>
</html>
