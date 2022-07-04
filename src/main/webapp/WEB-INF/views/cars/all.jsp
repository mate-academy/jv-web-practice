<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<%@include file="../header.jsp" %>
<h1>All cars</h1>
    <table border="1">
        <tr>
            <td>Id</td>
            <td>Model</td>
            <td>Manufacturer name</td>
            <td>Manufacturer country</td>
            <td>Drivers</td>
            <td colspan="2">Setting</td>
        </tr>
        <c:forEach items="${cars}" var = "car">
            <tr>
                <td><c:out value="${car.id}"/></td>
                <td><c:out value="${car.model}"/></td>
                <td><c:out value="${car.manufacturer.name}"/></td>
                <td><c:out value="${car.manufacturer.country}"/></td>
                <td>
                    <c:if test="${car.drivers.size() == 0}">no drivers</c:if>
                    <c:if test="${car.drivers.size() != 0}">
                        <c:forEach items="${car.drivers}" var = "driver">
                            <c:out value="${driver.name}"/>: <c:out value="${driver.licenseNumber}"/><br>
                        </c:forEach>
                    </c:if>
                </td>
                <td><a href="${pageContext.request.contextPath}/cars/drivers?id=${car.id}">change drivers</a> </td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a> </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
