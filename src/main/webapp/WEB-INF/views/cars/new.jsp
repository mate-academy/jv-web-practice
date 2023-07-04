<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Create a car</h1>
<p><a href="${pageContext.request.contextPath}/cars">Back</a></p>
<form action="${pageContext.request.contextPath}/cars/new" method="post">
    <c:choose>
        <c:when test="${manufacturers.isEmpty()}">
            <h2>Cannot create a car. No available manufacturers.</h2>
        </c:when>
        <c:otherwise>
            <label for="car_model">Car's Model</label>
            <input type="text" id="car_model" name="model" required/><br/>
            <label for="car_manufacturer">Car's Manufacturer</label>
            <select id="car_manufacturer" name="manufacturer_id">
                <c:forEach var="manufacturer" items="${manufacturers}">
                    <option value="${manufacturer.id}">${manufacturer.name} (${manufacturer.country})</option>
                </c:forEach>
            </select><br/>
            <button type="submit" style="cursor: pointer">Create</button>
        </c:otherwise>
    </c:choose>
</form>
</body>
</html>
