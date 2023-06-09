<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/index.jsp" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h3>All cars</h3>
<table>
    <tr>
        <td><b>ID</b></td>
        <td><b>Manufacturer</b></td>
        <td><b>Model</b></td>
        <td><b>Drivers</b></td>
        <td><b>Delete car</b></td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td style="vertical-align: top"><c:out value="${car.id}" /></td>
            <td style="vertical-align: top"><c:out value="${car.manufacturer.name}" /></td>
            <td style="vertical-align: top"><c:out value="${car.model}" /></td>
            <td style="vertical-align: top">
                <table>
                <c:forEach items="${car.drivers}" var="driver">
                    <tr>
                    <td><c:out value="${driver.name}" /></td>
                    <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?car_id=${car.id}&driver_id=${driver.id}">Remove driver</a></td>
                    </tr>
                </c:forEach>
                </table>
            </td>
            <td style="vertical-align: top">
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
