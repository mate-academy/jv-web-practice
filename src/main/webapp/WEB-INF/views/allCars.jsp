<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Display all cars</title>
</head>
<body>
<h1>All cars</h1>
<form method="get" action="${pageContext.request.contextPath}/cars/delete" id="delete" name="form">
    <select size="3" form="delete" id="select" name="id">
        <c:forEach items="${cars}" var="car">
            <option value="${car.id}"/>${car.id} ${car.model} ${car.manufacturer.id} ${car.manufacturer.name}
             ${car.manufacturer.country}
            <c:forEach items="${car.drivers}" var="driver">${driver.id} ${driver.name} ${driver.licenseNumber}</c:forEach>
            </option>
        </c:forEach>
    </select>
    <button type="submit">Delete</button>
</form>

<%--<table>
    <tr>
        <td>Car ID:</td>
        <td>Model:</td>
        <td>Manufacturer ID:</td>
        <td>Manufacturer name:</td>
        <td>Manufacturer country:</td>
        <td>Driver id:</td>
        <td>Driver name:</td>
        <td>Driver licence number:</td>
        <td>Delete</td>
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

    </c:forEach>--%>

</table>
<a href="${pageContext.request.contextPath}/index">Main</a>
<a href="${pageContext.request.contextPath}/cars/create">Add car</a>
<a href="${pageContext.request.contextPath}/manufacturers/create">Add manufacturer</a>
<a href="${pageContext.request.contextPath}/drivers/create">Add driver</a>
<a href="${pageContext.request.contextPath}/cars/add">Add driver to car</a>
</body>
</html>