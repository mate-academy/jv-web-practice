<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Update Car</title>
</head>

<body>
<h2>Update Car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/update?${car.id}">
    <label for="car_id">ID</label><br>
    <input type="text" id="car_id" name="car_id" readonly="true" value="${car.id}"><br>
    <label for="car_model">Car model</label><br>
    <input type="text" id="car_model" name="car_model" value="${car.model}"><br>
    <label for="car_manufacturer_id">Car Manufacturer ID</label><br>
    <select name="car_manufacturer_id" id="car_manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}" ${car.manufacturer.id == manufacturer.id ? 'selected' : ''}>
                    ${manufacturer.name} (${manufacturer.country})
            </option>
        </c:forEach>
    </select><br><br>
    <input type="submit" value="Save">
    <input type="button" value="Return" onclick="history.back()">
</form>
</body>
</html>
