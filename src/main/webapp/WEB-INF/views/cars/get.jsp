<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>Cars</h1>
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
            <td> id:<c:out value="${car.manufacturer.id}"/><br>
                name:<c:out value="${car.manufacturer.name}"/><br>
                country:<c:out value="${car.manufacturer.country}"/>
            </td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    id:<c:out value="${driver.id}"/>,
                    name:<c:out value="${driver.name}"/>,
                    license number:<c:out value="${driver.licenseNumber}"/><br>
                </c:forEach>
            </td>
            <td>
                <button type="button">
                    <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a>
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
