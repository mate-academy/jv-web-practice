<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Report about cars</title>
</head>
<body>
<style>
    td {
        text-align: center;
        vertical-align: middle;
    }
</style>
<h1>Table of cars!(Admin version)</h1>
<table BORDER="4" CELLPADDING="2" CELLSPACING="2" WIDTH="100%">
    <tr>
        <td rowspan="2">Car Id</td>
        <td colspan="3">Manufacturer</td>
        <td colspan="4">List of drivers</td>
    </tr>
    <tr>
        <td>Manufacturer Id</td>
        <td>Name</td>
        <td>Country</td>
        <td>Driver Id</td>
        <td>Name</td>
        <td>License number</td>
        <td>Delete</td>
    </tr>
        <c:forEach items="${cars}" var="car">
    <tr>
        <td rowspan="${fn:length(car.drivers)}"><c:out value="${car.id}"/></td>
        <td rowspan="${fn:length(car.drivers)}"><c:out value="${car.manufacturer.id}"/></td>
        <td rowspan="${fn:length(car.drivers)}"><c:out value="${car.manufacturer.name}"/></td>
        <td rowspan="${fn:length(car.drivers)}"><c:out value="${car.manufacturer.country}"/></td>
        <td><c:out value="${car.drivers.get(0).id}"/></td>
        <td><c:out value="${car.drivers.get(0).name}"/></td>
        <td><c:out value="${car.drivers.get(0).licenseNumber}"/></td>
        <td><a href="${pageContext.request.contextPath}/cars/drivers/get/admin/delete?car_id=${car.drivers.get(0).id}">delete this cars</a></td>
    </tr>
        <c:forEach begin="1" end="${fn:length(car.drivers)}" items="${car.drivers}" var="driver" varStatus="loop">
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
                <td><a href="${pageContext.request.contextPath}/cars/drivers/get/admin/delete?car_id=${driver.id}">delete this cars</a></td>
            </tr>
        </c:forEach>
    </c:forEach>
</table>
</body>
</html>
