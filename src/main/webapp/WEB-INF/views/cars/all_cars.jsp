<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars list</title>
</head>
<body>
<h1>List of the cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>MANUFACTURER</td>
        <td>COUNTRY</td>
        <td>DRIVER NAME</td>
        <td>LICENSE NR</td>
        <td>DELETE CAR</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.getManufacturer().getName()}" /></td>
            <td><c:out value="${car.getManufacturer().getCountry()}" /></td>
            <td>
                <c:forEach items="${car.getDrivers()}" var="driver">
                    <c:out value="${driver.name}" /><br>
                </c:forEach>
            </td>
            <td>
                <c:forEach items="${car.getDrivers()}" var="driver">
                    <c:out value="${driver.licenseNumber}" /><br>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                delete</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
