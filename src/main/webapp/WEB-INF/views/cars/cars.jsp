<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Display all cars</title>
</head>
<body>
<h1>All cars</h1>

<table>
    <tr>
        <td>Car ID:</td>
        <td>Model:</td>
        <td>Manufacturer ID:</td>
        <td>Manufacturer name:</td>
        <td>Manufacturer country:</td>
        <td>Driver id:</td>
        <td>Driver name:</td>
        <td>Driver licence number:</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.id}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.id}"/> <br>
                </c:forEach>
            </td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}"/><br>
                </c:forEach>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.licenseNumber}"/><br>
                </c:forEach>
            </td>
            <td><a href="${requestScope.request.contextPath}/cars/delete?id=${car.id}">delete</a> </td>
        </tr>

    </c:forEach>

</table>
<a href="${pageContext.request.contextPath}/index">Main</a>
<a href="${pageContext.request.contextPath}/cars/add">Add car</a>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a>
</body>
</html>
