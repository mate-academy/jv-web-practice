<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<H1>ALL CARS</H1>
    <c:forEach items="${cars}" var="car">
    <table>
        <tr>
            <td><b>Car</b></td>
        </tr>
        <tr>
            <td>id</td>
            <td>Model</td>
            <td>Manufacturer</td>
            <td>Country</td>
        </tr>
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/car/delete?id=${car.id}">
                delete this Car
            </a></td>
        </tr>
    </table>
        <c:forEach items="${car.drivers}" var="driver">
        <table>
            <tr>
                <td><b>Driver</b></td>
            </tr>
            <tr>
                <td>id</td>
                <td>Name</td>
                <td>LicenseNumber</td>
            </tr>
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
            </tr>
        </table>
        </c:forEach>
        <br>
    </c:forEach>
    <a href="${pageContext.request.contextPath}/cars/add">Add new car without drivers</a><br>
    <a href="${pageContext.request.contextPath}/cars/add/driver">Add new driver to car</a><br>
    <a href="${pageContext.request.contextPath}/">Go to main page</a><br>
</body>
</html>
