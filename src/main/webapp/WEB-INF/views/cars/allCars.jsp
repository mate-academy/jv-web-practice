<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
    <h2>All cars</h2>
    <table>
        <tr>
            <td>CAR ID</td>
            <td>MODEL</td>
            <td>MANUFACTURER</td>
            <td>COUNTRY</td>
            <td>DRIVER</td>
            <td>DELETE</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}"/></td>
                <td><c:out value="${car.model}"/></td>
                <td><c:out value="${car.manufacturer.name}"/></td>
                <td><c:out value="${car.manufacturer.country}"/></td>
                <td>
                    <c:forEach items="${car.drivers}" var="driver">
                        ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
                    </c:forEach>
                </td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
