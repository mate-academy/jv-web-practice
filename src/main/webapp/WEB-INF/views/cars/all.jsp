<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            text-align: left;
        }
        tr:hover {background-color: #D6EEEE;}
    </style>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>DELETE</td>
        <td>MODEL</td>
        <td>MANUFACTURER NAME</td>
        <td>MANUFACTURER COUNTRY</td>
        <td>DRIVER NAME</td>
        <td>DRIVER LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
        <td><c:out value="${car.id}"/></td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a></td>
        <td><c:out value="${car.model}"/></td>
        <td><c:out value="${car.manufacturer.name}"/></td>
        <td><c:out value="${car.manufacturer.country}"/></td>
        <c:forEach items="${car.drivers}" var="driver">
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            </tr>
            <td colspan="5"></td>
        </c:forEach>
    </c:forEach>
</table>
</body>
</html>
