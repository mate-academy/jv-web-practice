<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        <c:out value="${car.getModel()}"/> details
    </title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<br/>
<h2>Car details</h2> <br/>
<table>
    <tr>
        <td>Id:</td>
        <td><c:out value="${car.getId()}"/></td>
    </tr>
    <tr>
        <td>Model:</td>
        <td><c:out value="${car.getModel()}"/></td>
    </tr>
    <tr>
        <td>Manufacturer:</td>
        <td><c:out value="${car.getManufacturer().getName()}"/></td>
    </tr>
</table>
<br/>
<h3>Drivers added to car</h3> <br/>
<table>
<c:forEach items="${car.getDrivers()}" var="driver">
    <tr>
        <td>
            <c:out value="${driver.getName()}"/>
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/cars/removedriver?car_id=${car.getId()}&driver_id=${driver.getId()}">remove</a>
        </td>
    </tr>
</c:forEach>
</table>
<br/>
<h4>Add driver to car</h4>
<form method="post" action="${pageContext.request.contextPath}/cars/details?id=${car.getId()}">
    <select name="driver_id">
        <c:forEach items="${drivers}" var="driver">
            <option value="${driver.getId()}">${driver.getName()}</option>
        </c:forEach>
    </select>
    <button type="submit">apply</button>
</form>

</body>
</html>
