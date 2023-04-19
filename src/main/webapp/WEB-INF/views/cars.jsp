<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<style>
    h2 {
        text-align: center
    }

    .center {
        margin-left: auto;
        margin-right: auto;
    }
</style>
<head>
    <title>All cars</title>
</head>
<body>
<h2>All cars list</h2>
<table class="center">
    <tr>
        <td>id</td>
        <td>model</td>
        <td>manufacturer</td>
        <td>driver</td>
        <td>driverLicense</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <c:forEach items="${car.drivers}" var="driver">
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.name}"/></td>
            </c:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>