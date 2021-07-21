<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h2>All cars are here:</h2>
<table>
    <tr>
        <td>id</td>
        <td>model</td>
        <td>manufacturer</td>
        <td>country</td>
        <td>Drivers name</td>
        <td>license </td>
        <td>delete</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <c:forEach items="${car.drivers}" var="driver">
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
            </c:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
