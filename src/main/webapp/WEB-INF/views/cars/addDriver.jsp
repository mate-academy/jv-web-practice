<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a driver to a car</title>
</head>
<body>
<h1>Add a driver to a car</h1>
<p><a href="${pageContext.request.contextPath}/cars">Back</a></p>
<form action="${pageContext.request.contextPath}/cars/drivers/add" method="post">
    <input type="hidden" name="car_id" value="${car_id}">
    <c:choose>
        <c:when test="${drivers.isEmpty()}">
            <h2>No available drivers</h2>
        </c:when>
        <c:otherwise>
            <label for="all_drivers">Driver</label>
            <select id="all_drivers" name="driver_id">
                <c:forEach var="driver" items="${drivers}">
                    <option value="${driver.id}">${driver.name} (${driver.licenseNumber})</option>
                </c:forEach>
            </select><br/>
            <button type="submit" style="cursor: pointer">Add</button>
        </c:otherwise>
    </c:choose>
</form>
</body>
</html>
