<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all cars</title>
</head>
<body>
    <h1>Cars list:</h1>
    <table>
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer name</th>
        <th>Manufacturer country</th>
        <th>Driver name</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"></c:out></td>
            <td><c:out value="${car.model}"></c:out></td>
            <td><c:out value="${car.getManufacturer().name}"></c:out></td>
            <td><c:out value="${car.getManufacturer().country}"></c:out></td>
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