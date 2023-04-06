<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars edit</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%><br>
<form method="post" action="${pageContext.request.contextPath}/cars/edit">
    Model <input type="text" name="model" required><br>
    Manufacturer <select name="manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">
                <c:out value="${manufacturer.id}" />
                <c:out value="${manufacturer.name}" />
                <c:out value="${manufacturer.country}" />
            </option>
        </c:forEach>
    </select><br>
    <button type="submit">Confirm</button>
</form><br>
<form method="get" action="${pageContext.request.contextPath}/cars/driver/delete">
    Car <select name="car_id">
    <c:forEach items="${cars}" var="car">
        <option value="${car.id}">
            <c:out value="${car.id}" />
            <c:out value="${car.model}" />
        </option>
    </c:forEach>
    </select>
    Driver <select name="driver_id">
    <c:forEach items="${drivers}" var="driver">
        <option value="${driver.id}">
            <c:out value="${driver.id}" />
            <c:out value="${driver.name}" />
        </option>
    </c:forEach>
    </select>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
