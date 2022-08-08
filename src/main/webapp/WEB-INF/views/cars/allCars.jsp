<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<a href="${pageContext.request.contextPath}/">Go to Action menu</a>
<h2>List of cars:</h2>
<table>
    <tr>
        <th>Car_id</th>
        <th>Model</th>
        <th>Manufacturer_id</th>
        <th>Manufacturer</th>
        <th>Country</th>
        <th>Driver_id</th>
        <th>Driver</th>
        <th>License_number</th>
        <th>Action</th>
    </tr>
    <c:forEach var="car" items="${cars}">
        <c:if test="${car.drivers.size() == 0}">
            <tr>
                <td><c:out value="${car.id}"/></td>
                <td><c:out value="${car.model}"/></td>
                <td><c:out value="${car.manufacturer.id}"/></td>
                <td><c:out value="${car.manufacturer.name}"/></td>
                <td><c:out value="${car.manufacturer.country}"/></td>
                <td></td>
                <td></td>
                <td></td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    Delete the car with id = ${car.id} from DB</a></td>
            </tr>
        </c:if>
        <c:forEach var="driver" items="${car.drivers}">
            <tr>
                <td><c:out value="${car.id}"/></td>
                <td><c:out value="${car.model}"/></td>
                <td><c:out value="${car.manufacturer.id}"/></td>
                <td><c:out value="${car.manufacturer.name}"/></td>
                <td><c:out value="${car.manufacturer.country}"/></td>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    Delete the car with id = ${car.id} from DB</a></td>
            </tr>
        </c:forEach>
    </c:forEach>
</table>
</body>
</html>