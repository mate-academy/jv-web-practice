<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>Cars list:</h1>
    <table>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer name</td>
        <td>Manufacturer country</td>
        <td>Driver name</td>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}" /> </td>
                <td><c:out value="${car.model}" /> </td>
                <td><c:out value="${car.getManufacturer().name}" /> </td>
                <td><c:out value="${car.getManufacturer().country}" /> </td>
                <td>
                    <c:forEach items="${car.drivers}" var="driver">
                        <c:out value="${driver.name}" />
                    </c:forEach>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
