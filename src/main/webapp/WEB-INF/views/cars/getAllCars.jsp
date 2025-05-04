<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>MANUFACTURER</td>
        <td>MODEL</td>
        <td>DRIVERS</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name} "/>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                Delete this car</a></td>
        </tr>
    </c:forEach>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/add">Add new car</a></td>
    </tr>
</table>
</body>
</html>
