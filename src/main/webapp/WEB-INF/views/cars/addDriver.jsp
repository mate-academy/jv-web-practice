<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a driver to a car</title>
</head>
<body>
<h1>Add a driver to a car</h1>
<p><a href="${pageContext.request.contextPath}/cars">Return to all</a></p>
<form action="${pageContext.request.contextPath}/cars/drivers/add" method="post">
    <input type="hidden" name="car_id" value="${car_id}">
    <label for="all_drivers">All drivers</label>
    <select id="all_drivers" name="driver_id">
        <c:forEach var="driver" items="${drivers}">
            <option value="${driver.id}">${driver.name} (${driver.licenseNumber})</option>
        </c:forEach>
    </select><br/>
    <button type="submit">Add</button>
</form>
</body>
</html>
