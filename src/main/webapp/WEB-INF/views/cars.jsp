<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<html>
<head>
    <title>All Cars</title>
</head>
<body>
<div class="display-div" >
    <h2>Add car</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/create">
        Model <input class="text-field_input" type="text" name="model"><br>
        ManufacturerId <input class="text-field_input" type="text" name="manufacturer_id"><br>
        <button class="button-confirm" type="submit">Confirm</button>
    </form>
</div>
<div class="display-div">
    <h2>Add driver to car</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        CarId <input class="text-field_input" type="text" name="car_id"><br>
        DriverId <input class="text-field_input" type="text" name="driver_id"><br>
        <button class="button-confirm" type="submit">Confirm</button>
    </form>
</div>
<div class="display-div">
<table class="styled-table">
    <caption>Cars</caption>
    <thead>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
    </tr>
    </thead>
    <c:forEach items="${cars}" var="car">
        <tbody>
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <c:if test="${car.drivers.size() == 0}">
                <td>No drivers</td>
            </c:if>
            <c:if test="${car.drivers.size() > 0}">
                <td>
                    <c:forEach items="${car.drivers}" var="driver">
                        <c:out value="${driver.name}" />
                        <a href="${pageContext.request.contextPath}/cars/drivers/delete?driver_id=${driver.id}&car_id=${car.id}">delete</a><br>
                    </c:forEach>
                </td>
            </c:if>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
        </tr>
        </tbody>
    </c:forEach>
</table>
</div>
</body>
</html>
