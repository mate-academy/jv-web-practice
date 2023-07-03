<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Create a car</h1>
<p><a href="${pageContext.request.contextPath}/cars">Return to all</a></p>
<form action="${pageContext.request.contextPath}/cars/new" method="post">
    <label for="car_model">Car's Model</label>
    <input type="text" id="car_model" name="model"/><br/>
    <label for="car_manufacturer">Car's Manufacturer</label>
    <select id="car_manufacturer" name="manufacturer_id">
        <c:forEach var="manufacturer" items="${manufacturers}">
            <option value="${manufacturer.id}">${manufacturer.name} (${manufacturer.country})</option>
        </c:forEach>
    </select><br/>
    <button type="submit">Create</button>
</form>
</body>
</html>
