<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr bgcolor="#b2bec3">
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Country</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td width="40"><c:out value="${car.id}" /></td>
            <td width="100"><c:out value="${car.model}" /></td>
            <td width="180"><c:out value="${car.manufacturer.name}" /></td>
            <td width="180"><c:out value="${car.manufacturer.country}" /></td>
            <td width="100"><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
        <table bgcolor="#ffeaa7" width="600" border="1">
            <c:forEach items="${car.getDrivers()}" var="driver">
                <tr>
                    <td width="100"></td>
                    <td><c:out value="${driver.id}"/></td>
                    <td><c:out value="${driver.name}"/></td>
                    <td><c:out value="${driver.licenseNumber}"/></td>
                </tr>
            </c:forEach>
        </table>
    </c:forEach>
</table>
</body>
</html>
