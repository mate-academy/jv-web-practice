<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer's id</td>
        <td>Manufacturer's name</td>
        <td>Manufacturer's country</td>
        <td>Driver's ids</td>
        <td>Driver's names</td>
        <td>Driver's license numbers</td>
        <td>Delete this car</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.manufacturer.country}" /></td>
            <td><ul>
                <c:forEach items="${car.drivers}" var="driver">
                    <li>${driver.id}</li>
                </c:forEach>
            </ul></td>
            <td><ul>
                <c:forEach items="${car.drivers}" var="driver">
                    <li>${driver.name}</li>
                </c:forEach>
            </ul></td>
            <td><ul>
                <c:forEach items="${car.drivers}" var="driver">
                    <li>${driver.licenseNumber}</li>
                </c:forEach>
            </ul></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
