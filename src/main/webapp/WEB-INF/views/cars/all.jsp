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
    <td>manufacturers name</td>
    <td>manufacturers country</td>
    <td>Drivers name</td>
    <td>Drivers license number</td>
    <td>delete</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.get_manufacturer().name}"/></td>
            <td><c:out value="${car.get_manufacturer().country}"/></td>
            <c:forEach items="${car.getDrivers()}" var="driver">
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
            </c:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}"></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
