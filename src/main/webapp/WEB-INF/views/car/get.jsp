<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<form action="<c:url value="/index"/>">
    <input type="submit" value=" <- To main page " />
</form>
<h1>List of all cars:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Drivers</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name}"/>
                <c:out value="${driver.licenseNumber}"/>
            </c:forEach></td>
            <td><form action="${pageContext.request.contextPath}/cars/delete">
                <button type="submit" name="car_id" value="${car.id}">Delete</button>
            </form></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
