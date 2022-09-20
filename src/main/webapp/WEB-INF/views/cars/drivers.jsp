<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Cars and Drivers</h1>
<table>
    <tr>
        <td>CAR ID</td>
        <td>CAR MODEL</td>
        <td>MANUFACTURER ID</td>
        <td>MANUFACTURER NAME</td>
        <td>MANUFACTURER COUNTRY</td>
        <td>DRIVER INFO</td>
        <td>DELETE</td>>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.manufacturer.country}" /></td>
            <td>
            <table>
                <c:forEach items="${car.drivers}" var="driver">
                    <tr>
                        <td>ID - <c:out value="${driver.id}" />, </td>
                        <td>NAME - <c:out value="${driver.name}" />, </td>
                        <td>LICENSE - <c:out value="${driver.licenseNumber}" /> </td>
                    </tr>
                </c:forEach>
            </table>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?id=${car.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
